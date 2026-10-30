-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Xy VarChar(5) -- String
SET     @Xy = 'Hallo'

INSERT INTO "ComplexEyes"
(
	"Id",
	"Xy"
)
VALUES
(
	@Id,
	@Xy
)

-- DB2 DB2.LUW DB2LUW
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer(4) -- Int32
SET     @EyeId = 1
DECLARE @DogName_Second VarChar(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First VarChar(1) -- String
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
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator,
	@EyeId,
	@DogName_Second,
	@DogName_First
)

-- DB2 DB2.LUW DB2LUW
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator VarChar(10) -- String
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
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TestAnimalId Integer -- Int32
SET     @TestAnimalId = NULL

INSERT INTO "TestAnimalTable"
(
	"Id",
	"TestAnimalId"
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TestAnimalId Integer(4) -- Int32
SET     @TestAnimalId = 1

INSERT INTO "TestAnimalTable"
(
	"Id",
	"TestAnimalId"
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."AnimalType",
	"x"."AnimalType2",
	"x"."Id",
	"x"."Name",
	"x"."Discriminator",
	"x"."EyeId",
	"x"."Second",
	"x"."First"
FROM
	"ComplexAnimals" "x"
WHERE
	"x"."Discriminator" = 'Dog' AND "x"."AnimalType" = 'Big'
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'

SELECT
	"x"."AnimalType",
	"x"."AnimalType2",
	"x"."Id",
	"x"."Name",
	"x"."Discriminator",
	"x"."EyeId",
	"x"."Second",
	"x"."First"
FROM
	"ComplexAnimals" "x"
WHERE
	"x"."Discriminator" = 'Dog' AND "x"."AnimalType" = @AnimalType
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."AnimalType",
	"x"."AnimalType2",
	"x"."Id",
	"x"."Name",
	"x"."Discriminator",
	"x"."EyeId",
	"x"."Second",
	"x"."First"
FROM
	"ComplexAnimals" "x"
WHERE
	"x"."Discriminator" = 'Dog' AND "x"."AnimalType2" = 'Big'
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'

SELECT
	"x"."AnimalType",
	"x"."AnimalType2",
	"x"."Id",
	"x"."Name",
	"x"."Discriminator",
	"x"."EyeId",
	"x"."Second",
	"x"."First"
FROM
	"ComplexAnimals" "x"
WHERE
	"x"."Discriminator" = 'Dog' AND "x"."AnimalType2" = @AnimalType2
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."AnimalType",
	"x"."AnimalType2",
	"x"."Id",
	"x"."Name",
	"x"."Discriminator",
	"x"."EyeId",
	"x"."Second",
	"x"."First"
FROM
	"ComplexAnimals" "x"
WHERE
	"x"."Discriminator" = 'SuperWildAnimal' OR "x"."Discriminator" = 'Dog'
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id",
	"x"."TestAnimalId"
FROM
	"TestAnimalTable" "x"
		INNER JOIN "ComplexAnimals" "a_TestAnimal" ON "x"."TestAnimalId" = "a_TestAnimal"."Id"
WHERE
	"a_TestAnimal"."Discriminator" = 'Dog' AND "a_TestAnimal"."EyeId" = 1
FETCH NEXT 1 ROWS ONLY

