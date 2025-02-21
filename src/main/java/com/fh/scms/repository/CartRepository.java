package com.fh.scms.repository;

import com.fh.scms.pojo.Cart;

public interface CartRepository {

    void save(Cart cart);

    void update(Cart cart);

    void delete(Long id);
}
