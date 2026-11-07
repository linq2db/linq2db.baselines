-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Xy NVarchar2(5) -- String
SET     @Xy = 'Hallo'

INSERT INTO "ComplexEyes"
(
	"Id",
	"Xy"
)
VALUES
(
	:Id,
	:Xy
)

-- Oracle.11.Managed Oracle11
DECLARE @AnimalType NVarchar2(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarchar2(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator NVarchar2(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int32
SET     @EyeId = 1
DECLARE @DogName_Second NVarchar2(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First NVarchar2(1) -- String
SET     @DogName_First = 'a'

INSERT INTO "ComplexAnimals"
(
	"AnimalType",
	"AnimalType2",
	"Id",
	"Name",
	"Discriminator",
	"EyeId",
	"Second",
	"First"
)
VALUES
(
	:AnimalType,
	:AnimalType2,
	:Id,
	:Name,
	:Discriminator,
	:EyeId,
	:DogName_Second,
	:DogName_First
)

-- Oracle.11.Managed Oracle11
DECLARE @AnimalType NVarchar2(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarchar2(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator NVarchar2(10) -- String
SET     @Discriminator = 'WildAnimal'

INSERT INTO "ComplexAnimals"
(
	"AnimalType",
	"AnimalType2",
	"Id",
	"Name",
	"Discriminator"
)
VALUES
(
	:AnimalType,
	:AnimalType2,
	:Id,
	:Name,
	:Discriminator
)

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TestAnimalId Int32
SET     @TestAnimalId = NULL

INSERT INTO "TestAnimalTable"
(
	"Id",
	"TestAnimalId"
)
VALUES
(
	:Id,
	:TestAnimalId
)

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TestAnimalId Int32
SET     @TestAnimalId = 1

INSERT INTO "TestAnimalTable"
(
	"Id",
	"TestAnimalId"
)
VALUES
(
	:Id,
	:TestAnimalId
)

-- Oracle.11.Managed Oracle11
SELECT
	x."AnimalType",
	x."AnimalType2",
	x."Id",
	x."Name",
	x."Discriminator",
	x."EyeId",
	x."Second",
	x."First"
FROM
	"ComplexAnimals" x
WHERE
	x."Discriminator" = 'Dog' AND x."AnimalType" = N'Big' AND
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @AnimalType NVarchar2(3) -- String
SET     @AnimalType = 'Big'

SELECT
	x."AnimalType",
	x."AnimalType2",
	x."Id",
	x."Name",
	x."Discriminator",
	x."EyeId",
	x."Second",
	x."First"
FROM
	"ComplexAnimals" x
WHERE
	x."Discriminator" = 'Dog' AND x."AnimalType" = :AnimalType AND
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11
SELECT
	x."AnimalType",
	x."AnimalType2",
	x."Id",
	x."Name",
	x."Discriminator",
	x."EyeId",
	x."Second",
	x."First"
FROM
	"ComplexAnimals" x
WHERE
	x."Discriminator" = 'Dog' AND x."AnimalType2" = N'Big' AND
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @AnimalType2 NVarchar2(3) -- String
SET     @AnimalType2 = 'Big'

SELECT
	x."AnimalType",
	x."AnimalType2",
	x."Id",
	x."Name",
	x."Discriminator",
	x."EyeId",
	x."Second",
	x."First"
FROM
	"ComplexAnimals" x
WHERE
	x."Discriminator" = 'Dog' AND x."AnimalType2" = :AnimalType2 AND
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11
SELECT
	x."AnimalType",
	x."AnimalType2",
	x."Id",
	x."Name",
	x."Discriminator",
	x."EyeId",
	x."Second",
	x."First"
FROM
	"ComplexAnimals" x
WHERE
	(x."Discriminator" = N'SuperWildAnimal' OR x."Discriminator" = N'Dog') AND
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11
SELECT
	x."Id",
	x."TestAnimalId"
FROM
	"TestAnimalTable" x
		INNER JOIN "ComplexAnimals" a_TestAnimal ON x."TestAnimalId" = a_TestAnimal."Id"
WHERE
	a_TestAnimal."Discriminator" = N'Dog' AND a_TestAnimal."EyeId" = 1 AND
	ROWNUM <= 1

