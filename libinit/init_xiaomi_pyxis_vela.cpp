/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

#include <android-base/file.h>

static const variant_info_t pyxis_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "pyxis",
    .marketname = "",
    .model = "Mi 9 Lite",
    .build_fingerprint = "Xiaomi/pyxis/pyxis:11/RKQ1.200826.002/V12.5.2.0.RFCMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t vela_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Meitu",
    .device = "vela",
    .marketname = "",
    .model = "MI CC 9 Meitu Edition",
    .build_fingerprint = "Meitu/vela/vela:11/RKQ1.200826.002/V12.5.5.0.RFECNXM:user/release-keys",

    .nfc = true,
};

static void set_device_variant()
{
    std::string fdt_fw_device;

    android::base::ReadFileToString("/sys/firmware/devicetree/base/firmware/device", &fdt_fw_device);
    fdt_fw_device.pop_back();

    if (fdt_fw_device == "pyxis")
        set_variant_props(pyxis_info);
    else if (fdt_fw_device == "vela")
        set_variant_props(vela_info);
}

void vendor_load_properties() {
    set_dalvik_heap();
    set_device_variant();
}
