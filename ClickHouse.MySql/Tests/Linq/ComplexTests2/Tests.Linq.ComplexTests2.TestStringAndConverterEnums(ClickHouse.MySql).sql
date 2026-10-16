-- ClickHouse.MySql ClickHouse
INSERT INTO ComplexEyes
(
	Id,
	Xy
)
VALUES
(
	1,
	'Hallo'
)

-- ClickHouse.MySql ClickHouse
INSERT INTO ComplexAnimals
(
	AnimalType,
	AnimalType2,
	Id,
	Name,
	Discriminator,
	EyeId,
	Second,
	First
)
VALUES
(
	'Big',
	'Big',
	1,
	'FirstDog',
	'Dog',
	1,
	'b',
	'a'
)

-- ClickHouse.MySql ClickHouse
INSERT INTO ComplexAnimals
(
	AnimalType,
	AnimalType2,
	Id,
	Name,
	Discriminator
)
VALUES
(
	'Big',
	'Big',
	2,
	'WildAnimal',
	'WildAnimal'
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TestAnimalTable
(
	Id,
	TestAnimalId
)
VALUES
(
	1,
	NULL
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TestAnimalTable
(
	Id,
	TestAnimalId
)
VALUES
(
	2,
	1
)

-- ClickHouse.MySql ClickHouse
SELECT
	x.AnimalType,
	x.AnimalType2,
	x.Id,
	x.Name,
	x.Discriminator,
	x.EyeId,
	x.Second,
	x.First
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog' AND x.AnimalType = 'Big'
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	x.AnimalType,
	x.AnimalType2,
	x.Id,
	x.Name,
	x.Discriminator,
	x.EyeId,
	x.Second,
	x.First
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog' AND x.AnimalType = 'Big'
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	x.AnimalType,
	x.AnimalType2,
	x.Id,
	x.Name,
	x.Discriminator,
	x.EyeId,
	x.Second,
	x.First
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog' AND x.AnimalType2 = 'Big'
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	x.AnimalType,
	x.AnimalType2,
	x.Id,
	x.Name,
	x.Discriminator,
	x.EyeId,
	x.Second,
	x.First
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog' AND x.AnimalType2 = 'Big'
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	x.AnimalType,
	x.AnimalType2,
	x.Id,
	x.Name,
	x.Discriminator,
	x.EyeId,
	x.Second,
	x.First
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'SuperWildAnimal' OR x.Discriminator = 'Dog'
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id,
	x.TestAnimalId
FROM
	TestAnimalTable x
		INNER JOIN ComplexAnimals a_TestAnimal ON x.TestAnimalId = a_TestAnimal.Id
WHERE
	a_TestAnimal.Discriminator = 'Dog' AND a_TestAnimal.EyeId = 1
LIMIT 1

