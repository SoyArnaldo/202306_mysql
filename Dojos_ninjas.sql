INSERT INTO dojos(name, created_at, updated_at) 
VALUES 
	('Encarnación', NOW(), NOW()),
	('Hohenau', NOW(), NOW()),
	('Cambyreta', NOW(), NOW()); 

DELETE FROM dojos WHERE id IN (1, 2, 3);

INSERT INTO dojos(name, created_at, updated_at)
VALUES
	('ENCARNACION', NOW(), NOW()),
    ('HOHENAU', NOW(), NOW()),
    ('CAMBYRETA', NOW(), NOW());
    
INSERT INTO ninjas(first_name, last_name, age, created_at, updated_at, dojo_id)
VALUES 
	('Tom', 'Kroos', 32, NOW(), NOW(), 37),
    ('Lukas', 'Modric', 33, NOw(), NOW(), 37),
    ('Vinicius', 'Junior', 22, NOW(), NOW(), 37),
	('Daniel', 'Carvajal', 28, NOW(), NOW(), 38),
    ('Lucas', 'Vazquez', 28, NOW(), NOW(), 38),
    ('Federico', 'Valverde', 24, NOW(), NOW(), 38),
    ('Rodrygo', 'Goes', 23, NOW(), NOW(), 39),
    ('Dani', 'Ceballos', 24, NOW(), NOW(), 39),
    ('Ferlan', 'Mendy', 25, NOW(), NOW(), 39);
    
SELECT CONCAT_WS(' ', ninjas.first_name, ninjas.last_name, ninjas.age) AS 'Ninjas del primer Dojo' FROM dojos 
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id  WHERE dojos.id = 37;

SELECT CONCAT_WS(' ', ninjas.first_name, ninjas.last_name, ninjas.age) AS 'Ninjas del ultimo Dojo'  FROM dojos 
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id  WHERE dojos.id = 39;

SELECT dojos.name FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id
	WHERE dojos.id = 39;