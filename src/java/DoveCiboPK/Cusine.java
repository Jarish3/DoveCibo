package DoveCiboPK;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author stefano
 */
public class Cusine {

    private Integer id;
    private String name;

    public Cusine(Integer id) {
        this.id = id;
    }
    
    public Cusine(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

}
