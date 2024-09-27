const { error } = require('console');
var mysql = require('mysql');

var conexion = mysql.createConnection({
    host: 'localhost',
    database: 'rincon_campestre',
    user: 'root',
    password: '',
});

conexion.connect(function(error) {
    if (error) {
        throw error;
    } else {
        console.log('Conexión exitosa');
    }
});

// Agregar una columna a la tabla Producto:
conexion.query('ALTER TABLE producto ADD Seccion varchar(45)', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nColumna "Seccion" agregada a la tabla Producto.\n');

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Modificar el tipo de dato de la columna Total_Pedido en la tabla Pedido:
conexion.query('ALTER TABLE Pedido MODIFY Total_Pedido decimal(10, 3)', function(error, results, fields) {
    if (error)
        throw error;

    console.log('Tipo de dato de la columna Total_Pedido modificado.\n');
});

// Seleccionar todos los clientes y sus pedidos (con JOIN):
conexion.query('SELECT Cliente.Nombre_completo, Pedido.Id_pedido, Pedido.Fecha_pedido, Pedido.Total_Pedido FROM Cliente JOIN Pedido ON Cliente.Id_cliente = Pedido.Id_cliente_pedido', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nSeleccionar todos los clientes y sus pedidos (con JOIN):\n');
    results.forEach(result => {
        console.log(result);
    });

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Obtener los detalles de los productos vendidos en un pedido (con JOIN):
conexion.query('SELECT Pedido.Id_pedido, producto.Nombre, detalle_pedido.Cantidad, detalle_pedido.Precio_Unitario FROM Pedido JOIN detalle_pedido ON Pedido.Id_pedido = detalle_pedido.Id_detalle_pedido JOIN producto ON producto.Id_producto = detalle_pedido.Id_Producto_detalle_pedido', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nObtener los detalles de los productos vendidos en un pedido (con JOIN):\n');
    results.forEach(result => {
        console.log(result);
    });

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Seleccionar todos los productos con stock mayor a 50:
conexion.query('SELECT * FROM producto WHERE Cantidad_stock > 50', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nSeleccionar todos los productos con stock mayor a 50:\n');
    results.forEach(result => {
        console.log(result);
    });

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Actualizar el estado de un pedido:
conexion.query('UPDATE Pedido SET Estado_pedido = "Enviado" WHERE Id_pedido = 4', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nEstado del pedido actualizado.\n');
    console.log(`Filas afectadas: ${results.affectedRows}`);

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Actualizar la dirección de un cliente:
conexion.query('UPDATE Cliente SET Direccion = "Nueva Dirección 123" WHERE Id_cliente = 4', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nDirección del cliente actualizada.\n');
    console.log(`Filas afectadas: ${results.affectedRows}`);

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Insertar un nuevo cliente:
conexion.query('INSERT INTO Cliente (Nombre_completo, Correo_electronico, Telefono, Direccion, Fecha_registro) VALUES ("carlos carlos", "karloskarlos@gmail.com", "123456789", "Calle Falsa 123", "2024-09-25")', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nNuevo cliente insertado.\n');
    console.log(`ID del nuevo cliente: ${results.insertId}`);

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Insertar un nuevo producto:
conexion.query('INSERT INTO producto (Nombre, Descripcion, Precio, Cantidad_stock, Categoria, Fecha_Creacion) VALUES ("Peras", "Fruta fresca", 21, 53, "Frutas", "2024-09-25")', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nNuevo producto insertado.\n');
    console.log(`ID del nuevo producto: ${results.insertId}`);

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Insertar un nuevo pedido:
conexion.query('INSERT INTO Pedido (Fecha_pedido, Estado_pedido, Metodo_pago, Total_Pedido, Id_cliente_pedido) VALUES ("2024-09-25", "Pendiente", "Tarjeta de Debito", 100, 1)', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nNuevo pedido insertado.\n');
    console.log(`ID del nuevo pedido: ${results.insertId}`);

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Eliminar un pedido específico:
conexion.query('DELETE FROM Pedido WHERE Id_pedido = 3', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nPedido eliminado.\n');
    console.log(`Filas afectadas: ${results.affectedRows}`);

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Eliminar un producto que ya no está en stock:
conexion.query('DELETE FROM producto WHERE Cantidad_stock = 50', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nProducto eliminado con stock igual a 50.\n');
    console.log(`Filas afectadas: ${results.affectedRows}`);

    // Separador visual
    console.log('\n-------------------------------\n');
});

// Eliminar la tabla Info_Pedido:
conexion.query('DROP TABLE Info_Pedido', function(error, results, fields) {
    if (error)
        throw error;

    console.log('\nTabla Info_Pedido eliminada exitosamente\n');
});

conexion.end();
