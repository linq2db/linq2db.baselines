-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.AnimalType,
	t1.AnimalType2,
	t1.Id,
	t1.Name,
	t1.Discriminator,
	t1.EyeId,
	t1.Second,
	t1.First
FROM
	ComplexAnimals t1
WHERE
	t1.Discriminator = 'Dog'
LIMIT 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	ComplexAnimals
UPDATE
	AnimalType = 'Big',
	AnimalType2 = 'Big',
	Name = 'FirstDog',
	Discriminator = 'Dog',
	EyeId = 1,
	Second = 'b',
	First = 'a'
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	ComplexAnimals
UPDATE
	AnimalType = 'Big',
	AnimalType2 = 'Big',
	Name = 'FirstDog',
	Discriminator = 'Dog',
	EyeId = 1,
	Second = 'b',
	First = 'a'
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
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
	'Small',
	'Small',
	0,
	NULL,
	'Dog',
	NULL,
	NULL,
	NULL
)

