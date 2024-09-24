-- Categorias
-- Insertar
DELIMITER //
create procedure procInsertCategory(IN v_description VARCHAR(45))
begin
insert into tbl_categorias(cat_descripcion) values(v_description); 
end//
DELIMITER ;
-- Actualizar
DELIMITER //
create procedure procUpdateCategory(IN v_id INT, IN v_description VARCHAR(45))
begin
   update tbl_categorias 
set cat_descripcion = v_description where cat_id = v_id; 
end//
DELIMITER ;
-- Mostrar
DELIMITER //
create procedure procSelectCategory()
begin
select cat_id, cat_descripcion from tbl_categorias; 
end//
DELIMITER ;
-- Eliminar
DELIMITER //
create procedure procDeleteCategory(IN v_id INT)
begin
    delete from tbl_categorias where cat_id = v_id;
end//
DELIMITER ;

-- Proveedores
-- Insertar 
DELIMITER //
create procedure procInsertProviders(IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
begin 
     insert into tbl_provedores (prov_nit, prov_nombre) values (v_nit, v_nombre);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateProviders(IN v_id INT, IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
begin
     update tbl_provedores
     set prov_nit = v_nit, prov_nombre = v_nombre
     where prov_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectProviders()
begin
     select prov_id, prov_nit, prov_nombre from tbl_provedores;
end//
DELIMITER ;

-- ELiminar
DELIMITER //
create procedure procDeleteProviders(IN v_id INT)
begin
     delete from tbl_provedores where prov_id = v_id;
end//
DELIMITER ;

-- Productos
-- Insertar 
DELIMITER //
create procedure procInsertProduct(IN v_codigo VARCHAR(45), IN v_descripcion VARCHAR(100), IN v_cantidad INT, IN v_precio DOUBLE, IN v_prov_id INT, IN v_cat_id INT)
begin 
     insert into tbl_productos (pro_codigo, pro_descripcion, pro_cantidad, pro_precio, tbl_provedores_prov_id, tbl_categorias_cat_id)
     values (v_codigo, v_descripcion, v_cantidad, v_precio, v_prov_id, v_cat_id);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateProduct(IN v_id INT, IN v_codigo VARCHAR(45), IN v_descripcion VARCHAR(100), IN v_cantidad INT, IN v_precio DOUBLE, IN v_prov_id INT, IN v_cat_id INT)
begin
     update tbl_productos
     set pro_codigo = v_codigo, pro_descripcion = v_descripcion, pro_cantidad = v_cantidad, pro_precio = v_precio, tbl_provedores_prov_id = v_prov_id, tbl_categorias_cat_id = v_cat_id
     where pro_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectProduct()
begin
     select pro_id, pro_codigo, pro_descripcion, pro_cantidad, pro_precio, tbl_provedores_prov_id, tbl_categorias_cat_id from tbl_productos;
end//
DELIMITER ;

-- Eliminar
DELIMITER //
create procedure procDeleteProduct(IN v_id INT)
begin
     delete from tbl_productos where pro_id = v_id;
end//
DELIMITER ;

-- Usuarios