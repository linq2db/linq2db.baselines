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
	t1.Id as Id,
	t1.TestAnimalId as TestAnimalId,
	a_TestAnimal.AnimalType as AnimalType,
	a_TestAnimal.AnimalType2 as AnimalType2,
	a_TestAnimal.Id as Id_1,
	a_TestAnimal.Name as Name,
	a_TestAnimal.Discriminator as Discriminator,
	a_TestAnimal.EyeId as EyeId,
	a_TestAnimal.`Second` as Second_1,
	a_TestAnimal.`First` as First_1,
	a_Bla.Id as Id_2,
	a_Bla.Xy as Xy
FROM
	TestAnimalTable t1
		LEFT JOIN ComplexAnimals a_TestAnimal ON t1.TestAnimalId = a_TestAnimal.Id
		LEFT JOIN ComplexEyes a_Bla ON CASE
			WHEN a_TestAnimal.Discriminator = 'Dog'u THEN a_TestAnimal.EyeId
			ELSE NULL
		END = a_Bla.Id
ORDER BY
	t1.Id

