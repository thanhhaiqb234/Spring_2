package com.example.codegym.model.product;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "products")
public class Products {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String code;
    private String name;
    private Integer quantity;
    private String mainImage;
    private Double startPrice;
    private Double promotionalPrice;
    private String color;
    private String dateOfManufacture;
    private String describe;
    private Integer idTypeProduct;
    private Integer idTrademark;

}
