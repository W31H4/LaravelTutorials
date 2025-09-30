-- Datos Dummy para Base de Datos de Suplementos
-- ================================================

-- 1. USUARIOS (5 usuarios, uno sin órdenes)
INSERT INTO users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, address, cardData) VALUES
(1, 'Juan Pérez', 'juan.perez@email.com', '2024-01-15 10:30:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'abc123token', '2024-01-15 10:30:00', '2024-01-15 10:30:00', 'Calle 123 #45-67, Medellín', '************1234'),
(2, 'María González', 'maria.gonzalez@email.com', '2024-01-20 14:15:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'def456token', '2024-01-20 14:15:00', '2024-01-20 14:15:00', 'Carrera 50 #80-12, Medellín', '************3631'),
(3, 'Carlos Rodríguez', 'carlos.rodriguez@email.com', '2024-02-01 09:45:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ghi789token', '2024-02-01 09:45:00', '2024-02-01 09:45:00', 'Avenida El Poblado #30-45, Medellín', '************9745'),
(4, 'Ana Martínez', 'ana.martinez@email.com', '2024-02-10 16:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jkl012token', '2024-02-10 16:20:00', '2024-02-10 16:20:00', 'Calle 70 #52-18, Medellín', '************4821'),
(5, 'David Silva', 'david.silva@email.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2024-03-01 11:00:00', '2024-03-01 11:00:00', 'Transversal 25 #40-33, Medellín', NULL);

-- 2. CATEGORÍAS
INSERT INTO categories (id, name, description) VALUES
(1, 'Proteínas', 'Suplementos para el desarrollo muscular'),
(2, 'Vitaminas', 'Vitaminas y minerales esenciales'),
(3, 'Pre-Entreno', 'Suplementos para energía antes del entrenamiento'),
(4, 'Quemadores de Grasa', 'Suplementos para pérdida de peso'),
(5, 'Creatina', 'Suplementos de creatina para fuerza');

-- 3. SUPLEMENTOS
INSERT INTO supplements (id, name, description, laboratory, price, stock, flavour, expiration_date, ingredients, created_at, updated_at) VALUES
(1, 'Whey Protein Gold Standard', 'Proteína de suero de alta calidad con aminoácidos esenciales', 'Optimum Nutrition', 89900, 25, 'Chocolate', '2025-12-31', 'Aislado de proteína de suero, saborizantes naturales, stevia', '2024-01-10 08:00:00', '2024-01-10 08:00:00'),
(2, 'Multivitamínico Complete', 'Complejo vitamínico completo con 26 nutrientes esenciales', 'Nature Made', 45000, 50, 'Sin sabor', '2026-06-30', 'Vitamina A, C, D, E, complejo B, zinc, magnesio, hierro', '2024-01-10 08:30:00', '2024-01-10 08:30:00'),
(3, 'C4 Original Pre-Workout', 'Pre-entreno con cafeína y beta-alanina para máximo rendimiento', 'Cellucor', 65000, 15, 'Frutas del Bosque', '2025-09-15', 'Cafeína, beta-alanina, creatina nitrato, arginina', '2024-01-11 09:00:00', '2024-01-11 09:00:00'),
(4, 'L-Carnitina 3000', 'Quemador de grasa natural que ayuda en el metabolismo', 'Biotech USA', 52000, 30, 'Limón', '2025-11-20', 'L-Carnitina, agua purificada, saborizante natural de limón', '2024-01-12 10:15:00', '2024-01-12 10:15:00'),
(5, 'Creatina Monohidrato', 'Creatina pura para aumento de fuerza y potencia', 'MuscleTech', 38000, 40, 'Sin sabor', '2026-03-10', '100% Creatina monohidrato micronizada', '2024-01-12 11:00:00', '2024-01-12 11:00:00'),
(6, 'BCAA 2:1:1', 'Aminoácidos ramificados para recuperación muscular', 'Scivation', 58000, 20, 'Sandía', '2025-08-25', 'L-Leucina, L-Isoleucina, L-Valina, saborizantes naturales', '2024-01-13 12:30:00', '2024-01-13 12:30:00'),
(7, 'Omega 3 Fish Oil', 'Ácidos grasos esenciales para salud cardiovascular', 'Nordic Naturals', 42000, 35, 'Sin sabor', '2025-10-12', 'Aceite de pescado, EPA, DHA, vitamina E', '2024-01-14 13:45:00', '2024-01-14 13:45:00'),
(8, 'Glutamina Powder', 'L-Glutamina para recuperación y sistema inmune', 'Dymatize', 48000, 28, 'Sin sabor', '2025-07-18', '100% L-Glutamina en polvo', '2024-01-15 14:20:00', '2024-01-15 14:20:00');

-- 4. RELACIÓN CATEGORÍAS-SUPLEMENTOS
INSERT INTO category_supplement (id, category_id, supplement_id, created_at, updated_at) VALUES
(1, 1, 1, '2024-01-10 08:00:00', '2024-01-10 08:00:00'), -- Whey Protein - Proteínas
(2, 2, 2, '2024-01-10 08:30:00', '2024-01-10 08:30:00'), -- Multivitamínico - Vitaminas
(3, 3, 3, '2024-01-11 09:00:00', '2024-01-11 09:00:00'), -- C4 - Pre-Entreno
(4, 4, 4, '2024-01-12 10:15:00', '2024-01-12 10:15:00'), -- L-Carnitina - Quemadores
(5, 5, 5, '2024-01-12 11:00:00', '2024-01-12 11:00:00'), -- Creatina - Creatina
(6, 1, 6, '2024-01-13 12:30:00', '2024-01-13 12:30:00'), -- BCAA - Proteínas
(7, 2, 7, '2024-01-14 13:45:00', '2024-01-14 13:45:00'), -- Omega 3 - Vitaminas
(8, 1, 8, '2024-01-15 14:20:00', '2024-01-15 14:20:00'), -- Glutamina - Proteínas
(9, 3, 5, '2024-01-16 15:00:00', '2024-01-16 15:00:00'); -- Creatina también en Pre-Entreno

-- 5. TESTS (para usuarios que han usado suplementos)
INSERT INTO tests (id, user_id, context, routine, diet, weight, height, goals, responses, status, created_at, updated_at) VALUES
(1, 1, 'Entrenamiento de fuerza', 'Push/Pull/Legs 6 días', 'Dieta alta en proteínas', 75, 178, 'Ganar masa muscular magra', 'Busco aumentar 5kg de músculo en 6 meses', 'completed', '2024-01-16 10:00:00', '2024-01-20 15:30:00'),
(2, 2, 'Pérdida de peso', 'Cardio y pesas 4 días', 'Déficit calórico controlado', 68, 165, 'Perder 8kg de grasa', 'Quiero definir y mantener músculo', 'completed', '2024-01-25 11:15:00', '2024-01-28 16:45:00'),
(3, 3, 'Rendimiento deportivo', 'Entrenamiento funcional', 'Dieta balanceada', 80, 182, 'Mejorar rendimiento', 'Practico crossfit y busco más energía', 'completed', '2024-02-05 09:30:00', '2024-02-08 14:20:00'),
(4, 4, 'Mantenimiento', 'Yoga y caminata', 'Dieta vegetariana', 60, 162, 'Mantener peso y salud', 'Busco suplementos naturales', 'in_progress', '2024-02-15 08:45:00', '2024-02-15 08:45:00');

-- 6. RELACIÓN SUPLEMENTOS-TESTS (recomendaciones basadas en tests)
INSERT INTO supplement_test (id, supplement_id, test_id, created_at, updated_at) VALUES
(1, 1, 1, '2024-01-20 15:30:00', '2024-01-20 15:30:00'), -- Whey para ganancia muscular
(2, 5, 1, '2024-01-20 15:30:00', '2024-01-20 15:30:00'), -- Creatina para fuerza
(3, 4, 2, '2024-01-28 16:45:00', '2024-01-28 16:45:00'), -- L-Carnitina para pérdida de peso
(4, 2, 2, '2024-01-28 16:45:00', '2024-01-28 16:45:00'), -- Multivitamínico para déficit
(5, 3, 3, '2024-02-08 14:20:00', '2024-02-08 14:20:00'), -- Pre-entreno para rendimiento
(6, 6, 3, '2024-02-08 14:20:00', '2024-02-08 14:20:00'), -- BCAA para recuperación
(7, 2, 4, '2024-02-15 08:45:00', '2024-02-15 08:45:00'), -- Multivitamínico para vegetariana
(8, 7, 4, '2024-02-15 08:45:00', '2024-02-15 08:45:00'); -- Omega 3 para salud

-- 7. ÓRDENES (David Silva - usuario 5 NO tiene órdenes)
INSERT INTO orders (id, user_id, status, totalAmount, created_at, updated_at) VALUES
(1, 1, 'completed', 127900, '2024-01-22 14:30:00', '2024-01-25 10:15:00'), -- Juan
(2, 1, 'completed', 65000, '2024-02-15 16:20:00', '2024-02-18 11:30:00'),  -- Juan segunda orden
(3, 2, 'shipped', 97000, '2024-02-01 10:45:00', '2024-02-05 09:20:00'),    -- María
(4, 3, 'completed', 123000, '2024-02-10 12:15:00', '2024-02-13 15:45:00'), -- Carlos
(5, 4, 'processing', 87000, '2024-03-01 09:30:00', '2024-03-01 09:30:00'); -- Ana

-- 8. ITEMS DE ÓRDENES
INSERT INTO items (id, order_id, supplement_id, quantity, totalPrice, created_at, updated_at) VALUES
-- Orden 1 de Juan (Whey + Creatina)
(1, 1, 1, 1, 89900, '2024-01-22 14:30:00', '2024-01-22 14:30:00'),
(2, 1, 5, 1, 38000, '2024-01-22 14:30:00', '2024-01-22 14:30:00'),
-- Orden 2 de Juan (Pre-entreno)
(3, 2, 3, 1, 65000, '2024-02-15 16:20:00', '2024-02-15 16:20:00'),
-- Orden 3 de María (L-Carnitina + Multivitamínico)
(4, 3, 4, 1, 52000, '2024-02-01 10:45:00', '2024-02-01 10:45:00'),
(5, 3, 2, 1, 45000, '2024-02-01 10:45:00', '2024-02-01 10:45:00'),
-- Orden 4 de Carlos (Pre-entreno + BCAA)
(6, 4, 3, 1, 65000, '2024-02-10 12:15:00', '2024-02-10 12:15:00'),
(7, 4, 6, 1, 58000, '2024-02-10 12:15:00', '2024-02-10 12:15:00'),
-- Orden 5 de Ana (Omega 3 + Multivitamínico)
(8, 5, 7, 1, 42000, '2024-03-01 09:30:00', '2024-03-01 09:30:00'),
(9, 5, 2, 1, 45000, '2024-03-01 09:30:00', '2024-03-01 09:30:00');

-- 9. REVIEWS (solo para órdenes completadas)
INSERT INTO reviews (id, user_id, supplement_id, rating, comment, status, created_at, updated_at) VALUES
(1, 1, 1, 5, 'Excelente proteína, buen sabor y se disuelve muy bien. La recomiendo totalmente.', 1, '2024-01-30 10:00:00', '2024-01-30 10:00:00'),
(2, 1, 5, 4, 'Buena creatina, he notado mejoras en fuerza. Sin sabor como debe ser.', 1, '2024-02-01 11:30:00', '2024-02-01 11:30:00'),
(3, 1, 3, 5, 'El mejor pre-entreno que he probado. Energía increíble sin crash.', 1, '2024-02-22 15:45:00', '2024-02-22 15:45:00'),
(4, 2, 4, 4, 'Buen producto para definición, se nota la diferencia combinado con ejercicio.', 1, '2024-02-08 14:20:00', '2024-02-08 14:20:00'),
(5, 2, 2, 5, 'Completo multivitamínico, me siento con más energía durante el día.', 1, '2024-02-10 16:15:00', '2024-02-10 16:15:00'),
(6, 3, 3, 5, 'Increíble boost de energía para mis entrenamientos de crossfit.', 1, '2024-02-18 12:30:00', '2024-02-18 12:30:00'),
(7, 3, 6, 4, 'Buenos BCAA, ayudan mucho en la recuperación post-entreno.', 1, '2024-02-20 09:45:00', '2024-02-20 09:45:00');
