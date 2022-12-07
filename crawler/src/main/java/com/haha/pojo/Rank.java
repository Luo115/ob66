package com.haha.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Rank implements Serializable {
    String id;
    String heroName;
    int level;
    String layer;
    String winRate;
    String pickRate;
    String avatar;
    String updateTime;

}
