_contents := $(_contents)    "Aospa":{$(newline)

# See build/core/soong_config.mk for the add_json_* functions you can use here.
$(call add_json_bool, Has_legacy_camera_hal1,                $(filter true,$(if $(filter true,$(TARGET_HAS_LEGACY_CAMERA_HAL1)),true,false)))
$(call add_json_bool, Uses_media_extensions,                 $(filter true,$(if $(filter true,$(TARGET_USES_MEDIA_EXTENSIONS)),true,false)))
$(call add_json_bool, Uses_generic_camera_parameter_library, $(filter true,$(if $(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY),false,true)))
$(call add_json_bool, BoardUsesQTIHardware,                  $(filter true,$(if $(BOARD_USES_QTI_HARDWARE),true,false)))
$(call add_json_bool, Cant_reallocate_omx_buffers,           $(filter true,$(if $(filter omap4,$(TARGET_BOARD_PLATFORM)),true,false)))
$(call add_json_bool, Qcom_bsp_legacy,                       $(filter true,$(if $(filter msm7x27a msm7x30 msm8660 msm8960,$(TARGET_BOARD_PLATFORM)),true,false)))
$(call add_json_bool, Qti_flac_decoder,                      $(filter true,$(if $(strip $(AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER)),true,false)))

$(call add_json_str,  Specific_camera_parameter_library,     $(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY))
$(call add_json_str,  QTIAudioPath,                          $(call project-path-for,qcom-audio))
$(call add_json_str,  QTIDisplayPath,                        $(call project-path-for,qcom-display))
$(call add_json_str,  QTIMediaPath,                          $(call project-path-for,qcom-media))
$(call add_json_str,  Target_shim_libs,                      $(TARGET_LD_SHIM_LIBS))

# This causes the build system to strip out the last comma in our nested struct, to keep the JSON valid.
_contents := $(_contents)__SV_END

_contents := $(_contents)    },$(newline)
