-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Xy Text(5) -- String
SET     $Xy = 'Hallo'u

INSERT INTO ComplexEyes
(
	Id,
	Xy
)
VALUES
(
	$Id,
	$Xy
)

-- YDB Ydb
DECLARE $AnimalType Text(3) -- String
SET     $AnimalType = 'Big'u
DECLARE $AnimalType2 Text(3) -- String
SET     $AnimalType2 = 'Big'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(8) -- String
SET     $Name = 'FirstDog'u
DECLARE $Discriminator Text(3) -- String
SET     $Discriminator = 'Dog'u
DECLARE $EyeId Int32
SET     $EyeId = 1
DECLARE $DogName_Second Text(1) -- String
SET     $DogName_Second = 'b'u
DECLARE $DogName_First Text(1) -- String
SET     $DogName_First = 'a'u

INSERT INTO ComplexAnimals
(
	AnimalType,
	AnimalType2,
	Id,
	Name,
	Discriminator,
	EyeId,
	`Second`,
	`First`
)
VALUES
(
	$AnimalType,
	$AnimalType2,
	$Id,
	$Name,
	$Discriminator,
	$EyeId,
	$DogName_Second,
	$DogName_First
)

-- YDB Ydb
DECLARE $AnimalType Text(3) -- String
SET     $AnimalType = 'Big'u
DECLARE $AnimalType2 Text(3) -- String
SET     $AnimalType2 = 'Big'u
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text(10) -- String
SET     $Name = 'WildAnimal'u
DECLARE $Discriminator Text(10) -- String
SET     $Discriminator = 'WildAnimal'u

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
	$AnimalType,
	$AnimalType2,
	$Id,
	$Name,
	$Discriminator
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $TestAnimalId Int32
SET     $TestAnimalId = NULL

INSERT INTO TestAnimalTable
(
	Id,
	TestAnimalId
)
VALUES
(
	$Id,
	$TestAnimalId
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $TestAnimalId Int32
SET     $TestAnimalId = 1

INSERT INTO TestAnimalTable
(
	Id,
	TestAnimalId
)
VALUES
(
	$Id,
	$TestAnimalId
)

-- YDB Ydb
SELECT
	x.AnimalType as AnimalType,
	x.AnimalType2 as AnimalType2,
	x.Id as Id,
	x.Name as Name,
	x.Discriminator as Discriminator,
	x.EyeId as EyeId,
	x.`Second` as Second_1,
	x.`First` as First_1
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog'u AND x.AnimalType = 'Big'u
LIMIT 1

-- YDB Ydb
DECLARE $AnimalType Text(3) -- String
SET     $AnimalType = 'Big'u

SELECT
	x.AnimalType as AnimalType,
	x.AnimalType2 as AnimalType2,
	x.Id as Id,
	x.Name as Name,
	x.Discriminator as Discriminator,
	x.EyeId as EyeId,
	x.`Second` as Second_1,
	x.`First` as First_1
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog'u AND x.AnimalType = $AnimalType
LIMIT 1

-- YDB Ydb
SELECT
	x.AnimalType as AnimalType,
	x.AnimalType2 as AnimalType2,
	x.Id as Id,
	x.Name as Name,
	x.Discriminator as Discriminator,
	x.EyeId as EyeId,
	x.`Second` as Second_1,
	x.`First` as First_1
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog'u AND x.AnimalType2 = 'Big'u
LIMIT 1

-- YDB Ydb
DECLARE $AnimalType2 Text(3) -- String
SET     $AnimalType2 = 'Big'u

SELECT
	x.AnimalType as AnimalType,
	x.AnimalType2 as AnimalType2,
	x.Id as Id,
	x.Name as Name,
	x.Discriminator as Discriminator,
	x.EyeId as EyeId,
	x.`Second` as Second_1,
	x.`First` as First_1
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'Dog'u AND x.AnimalType2 = $AnimalType2
LIMIT 1

-- YDB Ydb
SELECT
	x.AnimalType as AnimalType,
	x.AnimalType2 as AnimalType2,
	x.Id as Id,
	x.Name as Name,
	x.Discriminator as Discriminator,
	x.EyeId as EyeId,
	x.`Second` as Second_1,
	x.`First` as First_1
FROM
	ComplexAnimals x
WHERE
	x.Discriminator = 'SuperWildAnimal'u OR x.Discriminator = 'Dog'u
LIMIT 1

-- YDB Ydb
SELECT
	x.Id as Id,
	x.TestAnimalId as TestAnimalId
FROM
	TestAnimalTable x
		INNER JOIN ComplexAnimals a_TestAnimal ON x.TestAnimalId = a_TestAnimal.Id
WHERE
	a_TestAnimal.Discriminator = 'Dog'u AND a_TestAnimal.EyeId = 1
LIMIT 1

