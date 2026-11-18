-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Xy Varchar(5) -- String
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

-- PostgreSQL.19 PostgreSQL12
DECLARE @AnimalType Varchar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 Varchar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator Varchar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 1
DECLARE @DogName_Second Varchar(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First Varchar(1) -- String
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

-- PostgreSQL.19 PostgreSQL12
DECLARE @AnimalType Varchar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 Varchar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator Varchar(10) -- String
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

-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
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
	:Id,
	:TestAnimalId
)

-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TestAnimalId Integer -- Int32
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."TestAnimalId",
	"a_TestAnimal"."AnimalType",
	"a_TestAnimal"."AnimalType2",
	"a_TestAnimal"."Id",
	"a_TestAnimal"."Name",
	"a_TestAnimal"."Discriminator",
	"a_TestAnimal"."EyeId",
	"a_TestAnimal"."Second",
	"a_TestAnimal"."First",
	"a_Bla"."Id",
	"a_Bla"."Xy"
FROM
	"TestAnimalTable" t1
		LEFT JOIN "ComplexAnimals" "a_TestAnimal" ON t1."TestAnimalId" = "a_TestAnimal"."Id"
		LEFT JOIN "ComplexEyes" "a_Bla" ON "a_TestAnimal"."EyeId" = "a_Bla"."Id" AND "a_TestAnimal"."Discriminator" = 'Dog'
ORDER BY
	t1."Id"

