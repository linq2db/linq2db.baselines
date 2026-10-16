-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Xy NVarChar(5) -- String
SET     $Xy = 'Hallo'

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

-- DuckDB
DECLARE $AnimalType NVarChar(3) -- String
SET     $AnimalType = 'Big'
DECLARE $AnimalType2 NVarChar(3) -- String
SET     $AnimalType2 = 'Big'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(8) -- String
SET     $Name = 'FirstDog'
DECLARE $Discriminator NVarChar(3) -- String
SET     $Discriminator = 'Dog'
DECLARE $EyeId  -- Int32
SET     $EyeId = 1
DECLARE $DogName_Second NVarChar(1) -- String
SET     $DogName_Second = 'b'
DECLARE $DogName_First NVarChar(1) -- String
SET     $DogName_First = 'a'

INSERT INTO ComplexAnimals
(
	AnimalType,
	AnimalType2,
	Id,
	Name,
	Discriminator,
	EyeId,
	"Second",
	"First"
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

-- DuckDB
DECLARE $AnimalType NVarChar(3) -- String
SET     $AnimalType = 'Big'
DECLARE $AnimalType2 NVarChar(3) -- String
SET     $AnimalType2 = 'Big'
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Name NVarChar(10) -- String
SET     $Name = 'WildAnimal'
DECLARE $Discriminator NVarChar(10) -- String
SET     $Discriminator = 'WildAnimal'

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

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $TestAnimalId  -- Int32
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

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $TestAnimalId  -- Int32
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

-- DuckDB
SELECT
	t1.AnimalType,
	t1.AnimalType2,
	t1.Id,
	t1.Name,
	t1.Discriminator,
	t1.EyeId,
	t1."Second",
	t1."First"
FROM
	ComplexAnimals t1
ORDER BY
	t1.Id

