#
# Copyright 2015-2016 Preetam J. D'Souza
# Copyright 2016 The Maru OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, device/asus/flo/full_flo.mk)
$(call inherit-product, vendor/asus/flo/device-vendor.mk)
$(call inherit-product, vendor/maruos/device-maru.mk)
$(call inherit-product, vendor/maruos/BoardConfigVendor.mk)

PRODUCT_NAME := maru_flo
PRODUCT_MODEL := Maru on the Nexus 7 2013 (Beta)

# allow /vendor/maruos files
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_PACKAGES += \
    Launcher3

DEVICE_PACKAGE_OVERLAYS += \
    device/asus/flo/overlay_maru/location \
    device/asus/flo/overlay_maru/apps \
    device/asus/flo/overlay_maru/daydream

# pick native mode tweak is supported on hammerhead
PRODUCT_PROPERTY_OVERRIDES += \
    persist.m.hdmi.try_native_mode=0

# in-tree kernel build options
KERNEL_DEFCONFIG := maru-flo_defconfig
