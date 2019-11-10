package org.github.projects.admin.model;

import lombok.*;

import java.util.Date;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString(callSuper = false)
public class User {
    private String name;
    private Integer age;
    private String address;
}


