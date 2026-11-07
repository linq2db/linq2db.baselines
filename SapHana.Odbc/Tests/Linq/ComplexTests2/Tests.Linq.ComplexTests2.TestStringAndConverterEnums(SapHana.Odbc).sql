-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Xy NVarChar(5) -- String
SET     @Xy = 'Hallo'

INSERT INTO "ComplexEyes"
(
	"Id",
	"Xy"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator NVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 1
DECLARE @DogName_Second NVarChar(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First NVarChar(1) -- String
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
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator NVarChar(10) -- String
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
	?,
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TestAnimalId Int -- Int32
SET     @TestAnimalId = NULL

INSERT INTO "TestAnimalTable"
(
	"Id",
	"TestAnimalId"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TestAnimalId Int -- Int32
SET     @TestAnimalId = 1

INSERT INTO "TestAnimalTable"
(
	"Id",
	"TestAnimalId"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
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
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @AnimalType NVarChar(3) -- String
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
	"x"."Discriminator" = 'Dog' AND "x"."AnimalType" = ?
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
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
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @AnimalType2 NVarChar(3) -- String
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
	"x"."Discriminator" = 'Dog' AND "x"."AnimalType2" = ?
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
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
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Id",
	"x"."TestAnimalId"
FROM
	"TestAnimalTable" "x"
		INNER JOIN "ComplexAnimals" "a_TestAnimal" ON "x"."TestAnimalId" = "a_TestAnimal"."Id"
WHERE
	"a_TestAnimal"."Discriminator" = 'Dog' AND "a_TestAnimal"."EyeId" = 1
LIMIT 1

