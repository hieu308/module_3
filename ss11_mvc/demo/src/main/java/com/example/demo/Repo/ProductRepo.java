package com.example.demo.Repo;

import com.example.demo.model.Product;

import java.util.*;

public class ProductRepo implements IProductRepo {
    private static Map<Integer, Product> productsList;

    static {
        productsList = new HashMap<>();
        productsList.put(1, new Product(1, "moto", 200));
        productsList.put(2, new Product(2, "benz", 300));
        productsList.put(3, new Product(3, "benz", 400));
        productsList.put(4, new Product(4, "benz", 500));
        productsList.put(5, new Product(5, "benz", 600));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productsList.values());
    }

    @Override
    public Product findById(int id) {
        return productsList.get(id);
    }

    @Override
    public void add(Product product) {
        productsList.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        productsList.put(id, product);
    }

    @Override
    public void delete(int id) {
        productsList.remove(id);
    }
}
