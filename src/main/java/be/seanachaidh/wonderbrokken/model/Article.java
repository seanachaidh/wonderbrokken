package be.seanachaidh.wonderbrokken.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Table;

@Table(name = "Articles")
public class Article {
    @GeneratedValue
    @Column(name = "idArticles")
    private int id;
    private String title;
    private float prize;

}
