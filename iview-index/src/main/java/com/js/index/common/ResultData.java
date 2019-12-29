package com.js.index.common;

import lombok.Data;

import java.io.Serializable;

@Data
public class ResultData<T> implements Serializable {

    private static final long serialVersionUID = 2245049429697762756L;

    private Integer code;

    private String message;

    private T data;
}
