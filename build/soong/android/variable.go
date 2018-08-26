package android
type Product_variables struct {
	Cant_reallocate_omx_buffers struct {
		Cflags []string
	}

	Qcom_bsp_legacy struct {
		Cflags []string
	}

	Qti_flac_decoder struct {
		Cflags []string
	}

	Target_shim_libs struct {
		Cppflags []string
	}

	Additional_gralloc_10_usage_bits struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	QTIAudioPath                          *string `json:",omitempty"`
	QTIDisplayPath                        *string `json:",omitempty"`
	QTIMediaPath                          *string `json:",omitempty"`
	Cant_reallocate_omx_buffers           *bool `json:",omitempty"`
	Qcom_bsp_legacy                       *bool `json:",omitempty"`
	Qti_flac_decoder                      *bool `json:",omitempty"`
	Target_shim_libs                      *string `json:",omitempty"`
	Additional_gralloc_10_usage_bits      *string `json:",omitempty"`
}
