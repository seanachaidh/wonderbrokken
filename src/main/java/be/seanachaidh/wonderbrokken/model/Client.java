package be.seanachaidh.wonderbrokken.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Table;

@Entity
@Table(name = "Clients")
public class Client {
    @GeneratedValue
    @Column(name = "idClients")
    private int id;
    
    private String surname;
    private String firstname;
    private String email;
}
