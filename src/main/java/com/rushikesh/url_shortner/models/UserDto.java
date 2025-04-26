package com.rushikesh.url_shortner.models;

import java.io.Serializable;

public record UserDto(Long id, String name) implements Serializable {
}