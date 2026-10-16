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
	t1.AnimalType,
	t1.AnimalType2,
	t1.Id,
	t1.Name,
	t1.Discriminator,
	t1.EyeId,
	t1.Second,
	t1.First,
	a_Bla.Id,
	a_Bla.Xy
FROM
	ComplexAnimals t1
		LEFT JOIN ComplexEyes a_Bla ON t1.EyeId = a_Bla.Id AND t1.Discriminator = 'Dog'
ORDER BY
	t1.Id

