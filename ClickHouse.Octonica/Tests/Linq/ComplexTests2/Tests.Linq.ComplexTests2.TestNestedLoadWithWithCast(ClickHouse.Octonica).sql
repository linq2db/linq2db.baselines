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
	t1.Id,
	t1.TestAnimalId,
	a_TestAnimal.AnimalType,
	a_TestAnimal.AnimalType2,
	a_TestAnimal.Id,
	a_TestAnimal.Name,
	a_TestAnimal.Discriminator,
	a_TestAnimal.EyeId,
	a_TestAnimal.Second,
	a_TestAnimal.First,
	a_Bla.Id,
	a_Bla.Xy
FROM
	TestAnimalTable t1
		LEFT JOIN ComplexAnimals a_TestAnimal ON t1.TestAnimalId = a_TestAnimal.Id
		LEFT JOIN ComplexEyes a_Bla ON a_TestAnimal.EyeId = a_Bla.Id AND a_TestAnimal.Discriminator = 'Dog'
ORDER BY
	t1.Id

