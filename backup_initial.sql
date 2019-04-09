-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-04-2019 a las 00:52:39
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET FOREIGN_KEY_CHECKS = 0;

--
-- Base de datos: `voyager`
--
-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrador', NULL, NULL),
(2, 'user', 'Normal User', '2019-04-06 04:48:50', '2019-04-06 04:48:50'),
(3, 'customer', 'Cliente', '2019-04-08 17:39:13', '2019-04-08 17:39:13');
-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(3, 1, 'Geraldine HG', 'admin@admin.com', 'users/April2019/2bmpVMVFGhHcrUksrxR7.jpg', NULL, '$2y$10$mshnZSOrBylF5FODLCc4AeCcom30ydHvFBRmO/RaSbsIdzfUi/nr6', NULL, '{\"locale\":\"es\"}', '2019-04-06 04:58:18', '2019-04-08 19:12:47'),
(4, 3, 'Leonardo D.', 'leo@gmail.com', 'users/default.png', NULL, '$2y$10$cfi.ahBisg.vzVBxM6BTeepcRxuGSZxxpLaxz4sL5o/BD.D1v8.sm', NULL, '{\"locale\":\"es\"}', '2019-04-08 17:42:26', '2019-04-08 19:30:24'),
(5, 3, 'Luis G.', 'luis@gmail.com', 'users/April2019/mA6S6ZOWevW2jdKqNVDb.jpg', NULL, '$2y$10$xzRBEi2fMCoY7hTJzeB3ae1PZudktKQyE6Dq5WhjHqT69TW6BE9lK', NULL, '{\"locale\":\"es\"}', '2019-04-09 01:56:55', '2019-04-09 01:56:55');

--
-- --------------------------------------------------------

-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(5, 3);

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-04-06 04:49:06', '2019-04-06 04:49:06'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-04-06 04:49:06', '2019-04-06 04:49:06');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `gender`, `first_name`, `last_name`, `phone`, `town_city`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 4, 'option1', 'Leonardo', 'Di Caprio', '545515', 'Los Angeles', 'USA', '2019-04-09 02:00:30', '2019-04-09 02:00:30', NULL),
(3, 5, 'option1', 'Luis Arturo', 'Gigante', '54243333', 'Valencia', 'Venezuela', '2019-04-09 02:00:49', '2019-04-09 02:00:49', NULL);

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 2, 'Beverly Hills', NULL, NULL),
(2, 3, 'Naguanagua, Carialinda', NULL, NULL);

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'App\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2018-07-28 13:24:56', '2019-04-08 19:30:03'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(4, 'customer_addresses', 'customer-addresses', 'Dirección del cliente', 'Direcciones de los clientes', 'voyager-paper-plane', 'App\\CustomerAddress', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:28:52', '2018-07-28 13:41:16'),
(5, 'customer_payment_methods', 'customer-payment-methods', 'Método de pago del cliente', 'Métodos de pago del cliente', NULL, 'App\\CustomerPaymentMethod', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:29:58', '2018-07-28 13:29:58'),
(6, 'customers', 'customers', 'Cliente', 'Clientes', 'voyager-people', 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:31:01', '2018-07-28 13:31:01'),
(7, 'invoice_status', 'invoice-status', 'Estado de la factura', 'Estados de las facturas', 'voyager-documentation', 'App\\InvoiceStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:33:20', '2018-07-28 13:33:20'),
(8, 'invoices', 'invoices', 'Invoice', 'Invoices', 'voyager-polaroid', 'App\\Invoice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:34:03', '2018-07-28 13:34:03'),
(9, 'order_line', 'order-line', 'Línea de pedido', 'Líneas de pedido', 'voyager-window-list', 'App\\OrderLine', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:36:38', '2018-07-28 13:36:38'),
(10, 'order_status', 'order-status', 'Estado del pedido', 'Estados de los pedidos', 'voyager-exclamation', 'App\\OrderStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:38:42', '2018-07-28 13:38:42'),
(11, 'orders', 'orders', 'Pedido', 'Pedidos', 'voyager-basket', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2018-07-28 13:39:38', '2019-04-09 02:39:28'),
(12, 'payment_methods', 'payment-methods', 'Método de pago del cliente', 'Métodos de pago del cliente', 'voyager-credit-cards', 'App\\PaymentMethod', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:46:40', '2018-07-28 13:46:40'),
(13, 'payments', 'payments', 'Pago', 'Pagos', 'voyager-dollar', 'App\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:47:43', '2018-07-28 13:47:43'),
(14, 'product_categories', 'product-categories', 'Categoría de producto', 'Categorías de productos', 'voyager-categories', 'App\\ProductCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:49:26', '2018-07-28 13:49:26'),
(15, 'products', 'products', 'Producto', 'Productos', 'voyager-rum-1', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2018-07-28 13:55:47', '2019-04-06 05:54:07'),
(16, 'shipments', 'shipments', 'Envío', 'Envíos', 'voyager-ship', 'App\\Shipment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 13:57:53', '2018-07-28 13:57:53'),
(20, 'product_images', 'product-images', 'Imagen del producto', 'Imágenes de productos', 'voyager-photos', 'App\\ProductImage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-28 14:50:41', '2018-07-28 14:50:41'),
(21, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-04-06 04:49:05', '2019-04-06 04:49:05'),
(22, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-04-06 04:49:06', '2019-04-06 04:49:06'),
(23, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-04-06 04:49:08', '2019-04-06 04:49:08'),
(24, 'exports', 'exports', 'Exportar Modelo', 'Exportar Modelos', 'voyager-book-download', 'App\\Export', NULL, 'App\\Http\\Controllers\\ExportController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-08 23:07:51', '2019-04-08 23:09:39');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Contraseña', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 0, 0, 0, '{\"format\":\"%d-%m-%Y\"}', 6),
(7, 1, 'updated_at', 'timestamp', 'Fecha de actualización', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rol', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(12, 1, 'settings', 'hidden', 'Configuración', 0, 0, 0, 0, 0, 0, '{}', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Rol', 0, 1, 1, 1, 1, 1, '{}', 9),
(23, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'address', 'text', 'Dirección', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'customer_id', 'select_dropdown', 'Cliente', 1, 1, 1, 1, 1, 1, NULL, 2),
(27, 4, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 1, 0, 1, NULL, 6),
(28, 4, 'customer_address_belongsto_customer_relationship', 'relationship', 'Cliente', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"first_name\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'customer_id', 'select_dropdown', 'Cliente', 1, 1, 1, 1, 1, 1, NULL, 2),
(31, 5, 'payment_method_id', 'text', 'Forma de pago', 1, 1, 1, 1, 1, 1, NULL, 4),
(32, 5, 'credit_card_number', 'text', 'Tarjeta de crédito', 1, 1, 1, 1, 1, 1, NULL, 6),
(33, 5, 'details', 'text', 'Detalles', 0, 1, 1, 1, 1, 1, NULL, 7),
(34, 5, 'customer_payment_method_belongsto_customer_relationship', 'relationship', 'customers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"first_name\",\"label\":\"id\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(35, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(36, 6, 'user_id', 'select_dropdown', 'Usuario', 1, 1, 1, 1, 1, 1, '', 2),
(37, 6, 'gender', 'select_dropdown', 'Género', 1, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Hombre\",\"option2\":\"Mujer\"}}', 4),
(38, 6, 'first_name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '', 5),
(39, 6, 'last_name', 'text', 'Apellidos', 1, 1, 1, 1, 1, 1, '', 6),
(40, 6, 'phone', 'text', 'Teléfono', 1, 1, 1, 1, 1, 1, '', 7),
(41, 6, 'town_city', 'text', 'Ciudad', 1, 1, 1, 1, 1, 1, '', 8),
(42, 6, 'country', 'text', 'País', 1, 1, 1, 1, 1, 1, '', 9),
(43, 6, 'deleted_at', 'timestamp', 'Fecha de borrado', 0, 0, 0, 0, 0, 0, NULL, 12),
(44, 6, 'customer_belongsto_user_relationship', 'relationship', 'Usuario', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(45, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 7, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, NULL, 2),
(47, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 0),
(48, 8, 'order_id', 'select_dropdown', 'Pedido', 1, 1, 1, 1, 1, 1, NULL, 2),
(49, 8, 'invoice_status_id', 'select_dropdown', 'Estado del pedido', 1, 1, 1, 1, 1, 1, NULL, 4),
(50, 8, 'details', 'text', 'Detalles', 0, 1, 1, 1, 1, 1, NULL, 6),
(51, 8, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 1, 0, 1, NULL, 7),
(52, 8, 'updated_at', 'timestamp', 'Fecha de actualización', 0, 0, 0, 0, 0, 0, NULL, 8),
(53, 8, 'invoice_belongsto_order_relationship', 'relationship', 'Pedido', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(54, 8, 'invoice_belongsto_invoice_status_relationship', 'relationship', 'Estado de la factura', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\InvoiceStatus\",\"table\":\"invoice_status\",\"type\":\"belongsTo\",\"column\":\"invoice_status_id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(55, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 0),
(56, 9, 'order_id', 'select_dropdown', 'Pedido', 1, 1, 1, 1, 1, 1, NULL, 2),
(57, 9, 'product_id', 'select_dropdown', 'Producto', 1, 1, 1, 1, 1, 1, NULL, 4),
(58, 9, 'qty', 'text', 'Unidades', 1, 1, 1, 1, 1, 1, NULL, 6),
(59, 9, 'product_price', 'text', 'Precio del producto', 1, 1, 1, 1, 1, 1, NULL, 7),
(60, 9, 'order_line_belongsto_order_relationship', 'relationship', 'Pedido', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(61, 9, 'order_line_belongsto_product_relationship', 'relationship', 'Producto', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(62, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(63, 10, 'description', 'text', 'Descripción', 1, 1, 1, 1, 1, 1, NULL, 2),
(64, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 11, 'customer_id', 'select_dropdown', 'Cliente', 1, 1, 1, 1, 1, 1, '{}', 2),
(66, 11, 'order_status_id', 'select_dropdown', 'Estado del pedido', 1, 1, 1, 1, 1, 1, '{}', 5),
(67, 11, 'details', 'markdown_editor', 'Detalle del pedido', 0, 1, 1, 1, 1, 1, '{}', 10),
(68, 11, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 0, 0, 1, '{}', 11),
(69, 11, 'updated_at', 'timestamp', 'Fecha de actualización', 0, 0, 0, 0, 0, 0, '{}', 12),
(70, 11, 'address_id', 'select_dropdown', 'Dirección de envío', 1, 1, 1, 1, 1, 1, '{}', 7),
(71, 11, 'order_belongsto_customer_relationship', 'relationship', 'Cliente', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"first_name\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(72, 11, 'order_belongsto_order_status_relationship', 'relationship', 'Estado del pedido', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\OrderStatus\",\"table\":\"order_status\",\"type\":\"belongsTo\",\"column\":\"order_status_id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(73, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(74, 12, 'description', 'text', 'Descripción', 1, 1, 1, 1, 1, 1, NULL, 2),
(75, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(76, 13, 'invoice_id', 'select_dropdown', 'Factura', 1, 1, 1, 1, 1, 1, NULL, 2),
(77, 13, 'amount', 'text', 'Cantidad pagada', 1, 1, 1, 1, 1, 1, NULL, 4),
(78, 13, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 1, 0, 1, NULL, 5),
(79, 13, 'payment_belongsto_invoice_relationship', 'relationship', 'Factura', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Invoice\",\"table\":\"invoices\",\"type\":\"belongsTo\",\"column\":\"invoice_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(80, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(81, 14, 'parent_id', 'select_dropdown', 'Categoría padre', 0, 1, 1, 1, 1, 1, NULL, 2),
(82, 14, 'description', 'text', 'Descripción', 0, 1, 1, 1, 1, 1, NULL, 4),
(83, 14, 'product_category_belongsto_product_category_relationship', 'relationship', 'Categoría padre', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(84, 5, 'customer_payment_method_belongsto_payment_method_relationship', 'relationship', 'payment_methods', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PaymentMethod\",\"table\":\"payment_methods\",\"type\":\"belongsTo\",\"column\":\"payment_method_id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(85, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(86, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(87, 6, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 1, 0, 1, NULL, 10),
(88, 6, 'updated_at', 'timestamp', 'Fecha de actualización', 0, 0, 0, 0, 0, 0, NULL, 11),
(89, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(90, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(91, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(92, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 15, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:4|max:150\"}}', 4),
(94, 15, 'price', 'text', 'Precio', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 5),
(95, 15, 'color', 'color', 'Color', 0, 1, 1, 1, 1, 1, '{}', 6),
(96, 15, 'size', 'text', 'Tamaño', 0, 1, 1, 1, 1, 1, '{}', 7),
(97, 15, 'description', 'text', 'Descripción', 1, 1, 1, 1, 1, 1, '{}', 8),
(98, 15, 'other_details', 'text', 'Otros detalles', 0, 1, 1, 1, 1, 1, '{}', 9),
(99, 15, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 0, 0, 0, '{\"format\":\"%d-%m-%Y\"}', 10),
(100, 15, 'updated_at', 'timestamp', 'Fecha de actualización', 0, 0, 0, 0, 0, 0, '{}', 11),
(101, 15, 'deleted_at', 'timestamp', 'Fecha de borrado', 0, 0, 0, 0, 0, 0, '{}', 12),
(102, 15, 'product_category_id', 'select_dropdown', 'Categoría del producto', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(103, 15, 'product_belongsto_product_category_relationship', 'relationship', 'Categoría del producto', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"product_category_id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(104, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 0),
(105, 16, 'order_id', 'select_dropdown', 'Pedido', 1, 1, 1, 1, 1, 1, NULL, 2),
(106, 16, 'invoice_id', 'text', 'Factura', 1, 1, 1, 1, 1, 1, NULL, 4),
(107, 16, 'tracking_number', 'text', 'Tracking Number', 1, 1, 1, 1, 1, 1, NULL, 6),
(108, 16, 'details', 'text', 'Detalles', 0, 1, 1, 1, 1, 1, NULL, 7),
(109, 16, 'created_at', 'timestamp', 'Fecha de alta', 0, 1, 1, 1, 0, 1, NULL, 8),
(110, 16, 'updated_at', 'timestamp', 'Fecha de actualización', 0, 0, 0, 0, 0, 0, NULL, 9),
(111, 16, 'shipment_belongsto_order_relationship', 'relationship', 'Pedido', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(113, 16, 'shipment_belongsto_invoice_relationship', 'relationship', 'Factura', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Invoice\",\"table\":\"invoices\",\"type\":\"belongsTo\",\"column\":\"invoice_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(114, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(115, 20, 'picture', 'image', 'Imagen', 1, 1, 1, 1, 1, 1, NULL, 2),
(116, 20, 'description', 'text', 'Descripción', 0, 1, 1, 1, 1, 1, NULL, 5),
(117, 20, 'product_id', 'select_dropdown', 'Producto', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 3),
(118, 20, 'product_image_belongsto_product_relationship', 'relationship', 'Producto', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(119, 11, 'order_belongsto_customer_address_relationship', 'relationship', 'Dirección de envío', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CustomerAddress\",\"table\":\"customer_addresses\",\"type\":\"belongsTo\",\"column\":\"address_id\",\"key\":\"id\",\"label\":\"address\",\"pivot_table\":\"customer_addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(121, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(122, 21, 'model', 'text', 'Model', 1, 1, 1, 1, 1, 1, NULL, 2),
(123, 21, 'created_at', 'text', 'Created At', 1, 1, 1, 1, 1, 1, NULL, 3),
(124, 15, 'slug', 'hidden', 'Slug', 0, 1, 1, 1, 1, 0, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 12),
(125, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(126, 21, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(127, 21, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(128, 21, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(129, 21, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(130, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(131, 22, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(132, 22, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(133, 22, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(134, 22, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(135, 22, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(136, 22, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(137, 22, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(138, 22, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(139, 22, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(140, 22, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(141, 22, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(142, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(143, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(144, 22, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(145, 22, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(146, 23, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(147, 23, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(148, 23, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(149, 23, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(150, 23, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(151, 23, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(152, 23, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(153, 23, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(154, 23, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(155, 23, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(156, 23, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(157, 23, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(158, 1, 'email_verified_at', 'text', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(159, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(160, 24, 'model', 'text', 'Modelo', 1, 1, 1, 1, 1, 1, '{}', 2),
(161, 24, 'created_at', 'timestamp', 'Fecha de creación', 0, 1, 1, 0, 0, 0, '{}', 3),
(162, 11, 'order_belongsto_product_relationship', 'relationship', 'Producto', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(163, 11, 'product_id', 'text', 'product_id', 1, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `exports`
--

INSERT INTO `exports` (`id`, `model`, `created_at`) VALUES
(1, 'App\\Exports\\Product', '2019-04-09 00:29:48'),
(2, 'App\\Exports\\User', '2019-04-09 00:31:04'),
(3, 'App\\Exports\\User', '2019-04-09 00:31:54'),
(4, 'App\\Exports\\User', '2019-04-09 00:32:19'),
(5, 'App\\Exports\\User', '2019-04-09 00:32:47'),
(6, 'App\\Exports\\User', '2019-04-09 00:33:47'),
(7, 'App\\Exports\\User', '2019-04-09 00:34:47'),
(8, 'App\\Exports\\User', '2019-04-09 00:36:38'),
(9, 'App\\Exports\\User', '2019-04-09 00:38:03'),
(10, 'App\\Exports\\Product', '2019-04-09 00:41:57'),
(11, 'App\\Exports\\User', '2019-04-09 00:46:19'),
(12, 'App\\Exports\\User', '2019-04-09 00:47:38'),
(13, 'App\\Exports\\User', '2019-04-09 00:54:06'),
(14, 'App\\Exports\\User', '2019-04-09 00:54:28'),
(15, 'App\\Exports\\Product', '2019-04-09 01:03:57');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(4, 'MyMenu', '2019-04-08 22:52:46', '2019-04-08 22:52:46');


-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-07-28 13:24:56', '2018-07-28 13:24:56', 'voyager.dashboard', NULL),
(2, 1, 'Multimedia', '', '_self', 'voyager-images', '#000000', NULL, 7, '2018-07-28 13:24:56', '2019-04-08 23:11:18', 'voyager.media.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-07-28 13:24:56', '2019-04-08 23:11:21', 'voyager.roles.index', NULL),
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2018-07-28 13:24:56', '2019-04-08 23:11:19', NULL, ''),
(6, 1, 'Constructor de menús', '', '_self', 'voyager-list', '#000000', 5, 1, '2018-07-28 13:24:56', '2018-07-28 14:01:40', 'voyager.menus.index', 'null'),
(7, 1, 'Base de datos', '', '_self', 'voyager-data', '#000000', 5, 2, '2018-07-28 13:24:56', '2018-07-28 14:01:47', 'voyager.database.index', 'null'),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-07-28 13:24:56', '2018-07-28 13:42:21', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-07-28 13:24:56', '2018-07-28 13:42:21', 'voyager.bread.index', NULL),
(10, 1, 'Configuraciones', '', '_self', 'voyager-settings', '#000000', NULL, 8, '2018-07-28 13:24:56', '2019-04-08 23:11:19', 'voyager.settings.index', 'null'),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-07-28 13:24:56', '2018-07-28 13:42:21', 'voyager.hooks', NULL),
(14, 1, 'Clientes', '', '_self', 'voyager-people', NULL, 20, 1, '2018-07-28 13:31:01', '2019-04-06 04:50:53', 'voyager.customers.index', NULL),
(16, 1, 'Facturas', '', '_self', 'voyager-polaroid', '#000000', 20, 2, '2018-07-28 13:34:03', '2019-04-06 04:50:53', 'voyager.invoices.index', 'null'),
(19, 1, 'Pedidos', '', '_self', 'voyager-basket', NULL, 20, 3, '2018-07-28 13:39:38', '2019-04-06 04:50:53', 'voyager.orders.index', NULL),
(20, 1, 'Tienda', '', '_self', 'voyager-shop', '#000000', NULL, 10, '2018-07-28 13:42:16', '2019-04-08 23:11:19', NULL, ''),
(21, 1, 'Métodos de pago', '', '_self', 'voyager-credit-cards', '#000000', 20, 6, '2018-07-28 13:46:40', '2019-04-06 04:50:53', 'voyager.payment-methods.index', 'null'),
(22, 1, 'Pagos', '', '_self', 'voyager-dollar', NULL, 20, 5, '2018-07-28 13:47:43', '2019-04-06 04:50:53', 'voyager.payments.index', NULL),
(23, 1, 'Categorías de productos', '', '_self', 'voyager-categories', NULL, 20, 9, '2018-07-28 13:49:26', '2019-04-06 04:50:54', 'voyager.product-categories.index', NULL),
(24, 1, 'Productos', '', '_self', 'voyager-rum-1', NULL, 20, 7, '2018-07-28 13:55:47', '2019-04-06 04:50:53', 'voyager.products.index', NULL),
(25, 1, 'Envíos', '', '_self', 'voyager-ship', NULL, 20, 10, '2018-07-28 13:57:53', '2019-04-06 04:50:54', 'voyager.shipments.index', NULL),
(27, 1, 'Imagen productos', '/admin/product-images', '_self', 'voyager-images', '#000000', 20, 8, '2018-07-28 15:55:05', '2019-04-06 04:50:54', NULL, ''),
(29, 1, 'Estado de pedidos', '/admin/order-status', '_self', 'voyager-pirate-hat', '#000000', 20, 4, '2018-07-28 21:09:45', '2019-04-06 04:50:53', NULL, ''),
(30, 1, 'Direcciones de envío', '/admin/customer-addresses', '_self', 'voyager-ship', '#000000', 20, 11, '2018-07-28 21:13:31', '2019-04-06 04:50:54', NULL, ''),
(34, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 33, 1, '2019-04-06 04:48:50', '2019-04-06 04:50:53', 'voyager.menus.index', NULL),
(35, 1, 'Database', '', '_self', 'voyager-data', NULL, 33, 2, '2019-04-06 04:48:50', '2019-04-06 04:50:53', 'voyager.database.index', NULL),
(37, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 6, '2019-04-06 04:49:05', '2019-04-08 23:11:18', 'voyager.categories.index', NULL),
(38, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2019-04-06 04:49:07', '2019-04-08 23:11:18', 'voyager.posts.index', NULL),
(39, 1, 'Paginas', '', '_self', 'voyager-file-text', '#000000', NULL, 4, '2019-04-06 04:49:09', '2019-04-08 23:11:18', 'voyager.pages.index', 'null'),
(40, 1, 'Exportar Modelos', '', '_self', 'voyager-book-download', '#000000', 20, 12, '2019-04-08 23:07:52', '2019-04-08 23:10:09', 'voyager.exports.index', 'null'),
(41, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', NULL, 3, '2019-04-08 23:11:09', '2019-04-08 23:11:21', 'voyager.users.index', NULL);

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `description`) VALUES
(2, NULL, 'Smartphones'),
(3, NULL, 'Laptops');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `name`, `price`, `color`, `size`, `description`, `other_details`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(3, 2, 'Xiamomi Redmi Note 5 Pro', 200, 'Black', '6\'', 'Gama Media Alta', '100% Relación calidad precio.', '2019-04-06 05:49:49', '2019-04-06 05:50:13', NULL, 'xiamomi-redmi-note-5-pro'),
(4, 3, 'MacBook Pro', 2500, '#bfbfbf', '15\'', 'Expensive', 'Tope de gama', '2019-04-06 05:57:34', '2019-04-06 05:57:34', NULL, 'macbook-pro');


-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `picture`, `description`) VALUES
(2, 3, 'product-images/April2019/bRtniNdemboBvLl1LVgz.jpg', 'Gama Media Alta');


-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `order_status`
--

INSERT INTO `order_status` (`id`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Pendiente', '2019-04-09 02:03:42', '2019-04-09 02:03:42'),
(4, 'Pagado', '2019-04-09 02:03:49', '2019-04-09 02:03:49');
-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_status_id`, `address_id`, `details`, `created_at`, `updated_at`, `product_id`) VALUES
(2, 2, 3, 1, 'Prueba de pedido', '2019-04-09 02:04:16', '2019-04-09 02:40:05', 4),
(3, 3, 4, 2, 'Prueba pedido pagado', '2019-04-09 02:04:34', '2019-04-09 02:39:57', 3);


-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-04-06 04:49:10', '2019-04-06 04:49:10');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `description`) VALUES
(1, 'Visa'),
(2, 'MasterCard');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(2, 'browse_bread', NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(3, 'browse_database', NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(4, 'browse_media', NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(5, 'browse_compass', NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(6, 'browse_menus', 'menus', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(7, 'read_menus', 'menus', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(8, 'edit_menus', 'menus', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(9, 'add_menus', 'menus', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(10, 'delete_menus', 'menus', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(11, 'browse_roles', 'roles', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(12, 'read_roles', 'roles', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(13, 'edit_roles', 'roles', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(14, 'add_roles', 'roles', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(15, 'delete_roles', 'roles', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(16, 'browse_users', 'users', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(17, 'read_users', 'users', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(18, 'edit_users', 'users', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(19, 'add_users', 'users', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(20, 'delete_users', 'users', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(21, 'browse_settings', 'settings', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(22, 'read_settings', 'settings', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(23, 'edit_settings', 'settings', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(24, 'add_settings', 'settings', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(25, 'delete_settings', 'settings', '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(26, 'browse_hooks', NULL, '2018-07-28 13:24:56', '2018-07-28 13:24:56'),
(27, 'browse_customer_addresses', 'customer_addresses', '2018-07-28 13:28:52', '2018-07-28 13:28:52'),
(28, 'read_customer_addresses', 'customer_addresses', '2018-07-28 13:28:52', '2018-07-28 13:28:52'),
(29, 'edit_customer_addresses', 'customer_addresses', '2018-07-28 13:28:52', '2018-07-28 13:28:52'),
(30, 'add_customer_addresses', 'customer_addresses', '2018-07-28 13:28:52', '2018-07-28 13:28:52'),
(31, 'delete_customer_addresses', 'customer_addresses', '2018-07-28 13:28:52', '2018-07-28 13:28:52'),
(32, 'browse_customer_payment_methods', 'customer_payment_methods', '2018-07-28 13:29:58', '2018-07-28 13:29:58'),
(33, 'read_customer_payment_methods', 'customer_payment_methods', '2018-07-28 13:29:58', '2018-07-28 13:29:58'),
(34, 'edit_customer_payment_methods', 'customer_payment_methods', '2018-07-28 13:29:58', '2018-07-28 13:29:58'),
(35, 'add_customer_payment_methods', 'customer_payment_methods', '2018-07-28 13:29:58', '2018-07-28 13:29:58'),
(36, 'delete_customer_payment_methods', 'customer_payment_methods', '2018-07-28 13:29:58', '2018-07-28 13:29:58'),
(37, 'browse_customers', 'customers', '2018-07-28 13:31:01', '2018-07-28 13:31:01'),
(38, 'read_customers', 'customers', '2018-07-28 13:31:01', '2018-07-28 13:31:01'),
(39, 'edit_customers', 'customers', '2018-07-28 13:31:01', '2018-07-28 13:31:01'),
(40, 'add_customers', 'customers', '2018-07-28 13:31:01', '2018-07-28 13:31:01'),
(41, 'delete_customers', 'customers', '2018-07-28 13:31:01', '2018-07-28 13:31:01'),
(42, 'browse_invoice_status', 'invoice_status', '2018-07-28 13:33:20', '2018-07-28 13:33:20'),
(43, 'read_invoice_status', 'invoice_status', '2018-07-28 13:33:20', '2018-07-28 13:33:20'),
(44, 'edit_invoice_status', 'invoice_status', '2018-07-28 13:33:20', '2018-07-28 13:33:20'),
(45, 'add_invoice_status', 'invoice_status', '2018-07-28 13:33:20', '2018-07-28 13:33:20'),
(46, 'delete_invoice_status', 'invoice_status', '2018-07-28 13:33:20', '2018-07-28 13:33:20'),
(47, 'browse_invoices', 'invoices', '2018-07-28 13:34:03', '2018-07-28 13:34:03'),
(48, 'read_invoices', 'invoices', '2018-07-28 13:34:03', '2018-07-28 13:34:03'),
(49, 'edit_invoices', 'invoices', '2018-07-28 13:34:03', '2018-07-28 13:34:03'),
(50, 'add_invoices', 'invoices', '2018-07-28 13:34:03', '2018-07-28 13:34:03'),
(51, 'delete_invoices', 'invoices', '2018-07-28 13:34:03', '2018-07-28 13:34:03'),
(52, 'browse_order_line', 'order_line', '2018-07-28 13:36:38', '2018-07-28 13:36:38'),
(53, 'read_order_line', 'order_line', '2018-07-28 13:36:38', '2018-07-28 13:36:38'),
(54, 'edit_order_line', 'order_line', '2018-07-28 13:36:38', '2018-07-28 13:36:38'),
(55, 'add_order_line', 'order_line', '2018-07-28 13:36:38', '2018-07-28 13:36:38'),
(56, 'delete_order_line', 'order_line', '2018-07-28 13:36:38', '2018-07-28 13:36:38'),
(57, 'browse_order_status', 'order_status', '2018-07-28 13:38:42', '2018-07-28 13:38:42'),
(58, 'read_order_status', 'order_status', '2018-07-28 13:38:42', '2018-07-28 13:38:42'),
(59, 'edit_order_status', 'order_status', '2018-07-28 13:38:42', '2018-07-28 13:38:42'),
(60, 'add_order_status', 'order_status', '2018-07-28 13:38:42', '2018-07-28 13:38:42'),
(61, 'delete_order_status', 'order_status', '2018-07-28 13:38:42', '2018-07-28 13:38:42'),
(62, 'browse_orders', 'orders', '2018-07-28 13:39:38', '2018-07-28 13:39:38'),
(63, 'read_orders', 'orders', '2018-07-28 13:39:38', '2018-07-28 13:39:38'),
(64, 'edit_orders', 'orders', '2018-07-28 13:39:38', '2018-07-28 13:39:38'),
(65, 'add_orders', 'orders', '2018-07-28 13:39:38', '2018-07-28 13:39:38'),
(66, 'delete_orders', 'orders', '2018-07-28 13:39:38', '2018-07-28 13:39:38'),
(67, 'browse_payment_methods', 'payment_methods', '2018-07-28 13:46:40', '2018-07-28 13:46:40'),
(68, 'read_payment_methods', 'payment_methods', '2018-07-28 13:46:40', '2018-07-28 13:46:40'),
(69, 'edit_payment_methods', 'payment_methods', '2018-07-28 13:46:40', '2018-07-28 13:46:40'),
(70, 'add_payment_methods', 'payment_methods', '2018-07-28 13:46:40', '2018-07-28 13:46:40'),
(71, 'delete_payment_methods', 'payment_methods', '2018-07-28 13:46:40', '2018-07-28 13:46:40'),
(72, 'browse_payments', 'payments', '2018-07-28 13:47:43', '2018-07-28 13:47:43'),
(73, 'read_payments', 'payments', '2018-07-28 13:47:43', '2018-07-28 13:47:43'),
(74, 'edit_payments', 'payments', '2018-07-28 13:47:43', '2018-07-28 13:47:43'),
(75, 'add_payments', 'payments', '2018-07-28 13:47:43', '2018-07-28 13:47:43'),
(76, 'delete_payments', 'payments', '2018-07-28 13:47:43', '2018-07-28 13:47:43'),
(77, 'browse_product_categories', 'product_categories', '2018-07-28 13:49:26', '2018-07-28 13:49:26'),
(78, 'read_product_categories', 'product_categories', '2018-07-28 13:49:26', '2018-07-28 13:49:26'),
(79, 'edit_product_categories', 'product_categories', '2018-07-28 13:49:26', '2018-07-28 13:49:26'),
(80, 'add_product_categories', 'product_categories', '2018-07-28 13:49:26', '2018-07-28 13:49:26'),
(81, 'delete_product_categories', 'product_categories', '2018-07-28 13:49:26', '2018-07-28 13:49:26'),
(82, 'browse_products', 'products', '2018-07-28 13:55:47', '2018-07-28 13:55:47'),
(83, 'read_products', 'products', '2018-07-28 13:55:47', '2018-07-28 13:55:47'),
(84, 'edit_products', 'products', '2018-07-28 13:55:47', '2018-07-28 13:55:47'),
(85, 'add_products', 'products', '2018-07-28 13:55:47', '2018-07-28 13:55:47'),
(86, 'delete_products', 'products', '2018-07-28 13:55:47', '2018-07-28 13:55:47'),
(87, 'browse_shipments', 'shipments', '2018-07-28 13:57:53', '2018-07-28 13:57:53'),
(88, 'read_shipments', 'shipments', '2018-07-28 13:57:53', '2018-07-28 13:57:53'),
(89, 'edit_shipments', 'shipments', '2018-07-28 13:57:53', '2018-07-28 13:57:53'),
(90, 'add_shipments', 'shipments', '2018-07-28 13:57:53', '2018-07-28 13:57:53'),
(91, 'delete_shipments', 'shipments', '2018-07-28 13:57:53', '2018-07-28 13:57:53'),
(92, 'browse_product_images', 'product_images', '2018-07-28 14:50:41', '2018-07-28 14:50:41'),
(93, 'read_product_images', 'product_images', '2018-07-28 14:50:41', '2018-07-28 14:50:41'),
(94, 'edit_product_images', 'product_images', '2018-07-28 14:50:41', '2018-07-28 14:50:41'),
(95, 'add_product_images', 'product_images', '2018-07-28 14:50:41', '2018-07-28 14:50:41'),
(96, 'delete_product_images', 'product_images', '2018-07-28 14:50:41', '2018-07-28 14:50:41'),
(97, 'browse_polls', 'polls', '2018-07-28 20:24:27', '2018-07-28 20:24:27'),
(98, 'read_polls', 'polls', '2018-07-28 20:24:27', '2018-07-28 20:24:27'),
(99, 'edit_polls', 'polls', '2018-07-28 20:24:27', '2018-07-28 20:24:27'),
(100, 'add_polls', 'polls', '2018-07-28 20:24:27', '2018-07-28 20:24:27'),
(101, 'delete_polls', 'polls', '2018-07-28 20:24:27', '2018-07-28 20:24:27'),
(102, 'browse_categories', 'categories', '2019-04-06 04:49:05', '2019-04-06 04:49:05'),
(103, 'read_categories', 'categories', '2019-04-06 04:49:05', '2019-04-06 04:49:05'),
(104, 'edit_categories', 'categories', '2019-04-06 04:49:05', '2019-04-06 04:49:05'),
(105, 'add_categories', 'categories', '2019-04-06 04:49:05', '2019-04-06 04:49:05'),
(106, 'delete_categories', 'categories', '2019-04-06 04:49:05', '2019-04-06 04:49:05'),
(107, 'browse_posts', 'posts', '2019-04-06 04:49:07', '2019-04-06 04:49:07'),
(108, 'read_posts', 'posts', '2019-04-06 04:49:07', '2019-04-06 04:49:07'),
(109, 'edit_posts', 'posts', '2019-04-06 04:49:07', '2019-04-06 04:49:07'),
(110, 'add_posts', 'posts', '2019-04-06 04:49:08', '2019-04-06 04:49:08'),
(111, 'delete_posts', 'posts', '2019-04-06 04:49:08', '2019-04-06 04:49:08'),
(112, 'browse_pages', 'pages', '2019-04-06 04:49:09', '2019-04-06 04:49:09'),
(113, 'read_pages', 'pages', '2019-04-06 04:49:09', '2019-04-06 04:49:09'),
(114, 'edit_pages', 'pages', '2019-04-06 04:49:09', '2019-04-06 04:49:09'),
(115, 'add_pages', 'pages', '2019-04-06 04:49:10', '2019-04-06 04:49:10'),
(116, 'delete_pages', 'pages', '2019-04-06 04:49:10', '2019-04-06 04:49:10'),
(117, 'browse_exports', 'exports', '2019-04-08 23:07:52', '2019-04-08 23:07:52'),
(118, 'read_exports', 'exports', '2019-04-08 23:07:52', '2019-04-08 23:07:52'),
(119, 'edit_exports', 'exports', '2019-04-08 23:07:52', '2019-04-08 23:07:52'),
(120, 'add_exports', 'exports', '2019-04-08 23:07:52', '2019-04-08 23:07:52'),
(121, 'delete_exports', 'exports', '2019-04-08 23:07:52', '2019-04-08 23:07:52');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(92, 3),
(93, 1),
(93, 3),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1);

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-06 04:49:08', '2019-04-06 04:49:08'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-06 04:49:08', '2019-04-06 04:49:08'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-06 04:49:08', '2019-04-06 04:49:08'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-06 04:49:08', '2019-04-06 04:49:08');

-- --------------------------------------------------------

-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Aplicación Voyager', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Administración', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 22, 'pt', 'Post', '2019-04-06 04:49:10', '2019-04-06 04:49:10'),
(2, 'data_types', 'display_name_singular', 23, 'pt', 'Página', '2019-04-06 04:49:10', '2019-04-06 04:49:10'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-04-06 04:49:10', '2019-04-06 04:49:10'),
(4, 'data_types', 'display_name_singular', 21, 'pt', 'Categoria', '2019-04-06 04:49:10', '2019-04-06 04:49:10'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-04-06 04:49:10', '2019-04-06 04:49:10'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(7, 'data_types', 'display_name_plural', 22, 'pt', 'Posts', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(8, 'data_types', 'display_name_plural', 23, 'pt', 'Páginas', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(10, 'data_types', 'display_name_plural', 21, 'pt', 'Categorias', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-04-06 04:49:11', '2019-04-06 04:49:11'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(21, 'menu_items', 'title', 31, 'pt', 'Media', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(22, 'menu_items', 'title', 38, 'pt', 'Publicações', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(23, 'menu_items', 'title', 32, 'pt', 'Utilizadores', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(24, 'menu_items', 'title', 37, 'pt', 'Categorias', '2019-04-06 04:49:12', '2019-04-06 04:49:12'),
(25, 'menu_items', 'title', 39, 'pt', 'Páginas', '2019-04-06 04:49:13', '2019-04-06 04:49:13'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-04-06 04:49:13', '2019-04-06 04:49:13'),
(27, 'menu_items', 'title', 33, 'pt', 'Ferramentas', '2019-04-06 04:49:13', '2019-04-06 04:49:13'),
(28, 'menu_items', 'title', 34, 'pt', 'Menus', '2019-04-06 04:49:13', '2019-04-06 04:49:13'),
(29, 'menu_items', 'title', 35, 'pt', 'Base de dados', '2019-04-06 04:49:13', '2019-04-06 04:49:13'),
(30, 'menu_items', 'title', 36, 'pt', 'Configurações', '2019-04-06 04:49:13', '2019-04-06 04:49:13');


--


SET FOREIGN_KEY_CHECKS = 1;
