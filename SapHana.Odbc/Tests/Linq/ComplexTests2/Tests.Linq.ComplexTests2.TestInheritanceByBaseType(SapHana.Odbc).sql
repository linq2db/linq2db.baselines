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
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Int -- Int32
SET     @Id = 666
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator NVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First NVarChar(4) -- String
SET     @DogName_First = 'Good'

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
SELECT
	"t1"."AnimalType",
	"t1"."AnimalType2",
	"t1"."Id",
	"t1"."Name",
	"t1"."Discriminator",
	"t1"."EyeId",
	"t1"."Second",
	"t1"."First"
FROM
	"ComplexAnimals" "t1"
WHERE
	"t1"."Discriminator" = 'Dog' AND "t1"."Id" = 666
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Int -- Int32
SET     @Id = 666
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator NVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First NVarChar(4) -- String
SET     @DogName_First = 'Good'

UPSERT "ComplexAnimals"
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
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."AnimalType",
	"t1"."AnimalType2",
	"t1"."Id",
	"t1"."Name",
	"t1"."Discriminator",
	"t1"."EyeId",
	"t1"."Second",
	"t1"."First"
FROM
	"ComplexAnimals" "t1"
WHERE
	"t1"."Discriminator" = 'Dog' AND "t1"."Id" = 666
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator NVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First NVarChar(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Int -- Int32
SET     @Id = 666

UPDATE
	"ComplexAnimals" "t1"
SET
	"AnimalType" = ?,
	"AnimalType2" = ?,
	"Name" = ?,
	"Discriminator" = ?,
	"EyeId" = ?,
	"Second" = ?,
	"First" = ?
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."AnimalType",
	"t1"."AnimalType2",
	"t1"."Id",
	"t1"."Name",
	"t1"."Discriminator",
	"t1"."EyeId",
	"t1"."Second",
	"t1"."First"
FROM
	"ComplexAnimals" "t1"
WHERE
	"t1"."Discriminator" = 'Dog' AND "t1"."Id" = 666
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 666

DELETE FROM
	"ComplexAnimals" "t1"
WHERE
	"t1"."Id" = ?

