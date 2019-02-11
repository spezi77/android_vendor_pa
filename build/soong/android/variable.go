package android
type Product_variables struct {
	Has_legacy_camera_hal1 struct {
		Cflags []string
	}

	Uses_media_extensions struct {
		Cflags []string
	}

	Cant_reallocate_omx_buffers struct {
		Cflags []string
	}

	Qcom_bsp_legacy struct {
		Cflags []string
	}

	Qti_flac_decoder struct {
		Cflags []string
	}

	Uses_generic_camera_parameter_library struct {
		Srcs []string
	}

	Target_shim_libs struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	Has_legacy_camera_hal1                *bool `json:",omitempty"`
	Uses_media_extensions                 *bool `json:",omitempty"`
	Uses_generic_camera_parameter_library *bool `json:",omitempty"`
	Specific_camera_parameter_library     *string `json:",omitempty"`
	QTIAudioPath                          *string `json:",omitempty"`
	QTIDisplayPath                        *string `json:",omitempty"`
	QTIMediaPath                          *string `json:",omitempty"`
	Cant_reallocate_omx_buffers           *bool `json:",omitempty"`
	Qcom_bsp_legacy                       *bool `json:",omitempty"`
	Qti_flac_decoder                      *bool `json:",omitempty"`
	Target_shim_libs  *string `json:",omitempty"`
}
