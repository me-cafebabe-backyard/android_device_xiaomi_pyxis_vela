#!/vendor/bin/sh

case "$(cat /sys/firmware/devicetree/base/firmware/device)" in
	"pyxis")
		DEVICE="pyxis"
		MODEL="Mi 9 Lite"
		;;
	"vela")
		DEVICE="vela"
		MODEL="MI CC 9 Meitu Edition"
		;;
	*)
		exit 1
		;;
esac

setprop "ro.vendor.pyxis_vela.device" "$DEVICE"
setprop "ro.vendor.pyxis_vela.model" "Xiaomi $MODEL"

exit 0
