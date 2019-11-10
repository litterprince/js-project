package org.github.projects.admin.dto;

import lombok.*;
import org.github.projects.admin.model.User;

@Data
@ToString(callSuper = false)
@AllArgsConstructor
@NoArgsConstructor
public class QueryUserDto extends User {
    Integer page;
}
