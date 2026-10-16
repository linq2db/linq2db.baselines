-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Xy Varchar(7) -- String
SET     @Xy = 'test321'

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

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Xy"
FROM
	"ComplexEyes" t1
WHERE
	t1."Id" = 123
LIMIT 1

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Xy Varchar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id Integer -- Int32
SET     @Id = 123

UPDATE
	"ComplexEyes"
SET
	"Xy" = :Xy
WHERE
	"ComplexEyes"."Id" = :Id

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Xy"
FROM
	"ComplexEyes" t1
WHERE
	t1."Id" = 123
LIMIT 1

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Xy Varchar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id Integer -- Int32
SET     @Id = 123

UPDATE
	"ComplexEyes"
SET
	"Xy" = :Xy
WHERE
	"ComplexEyes"."Id" = :Id

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Xy"
FROM
	"ComplexEyes" t1
WHERE
	t1."Id" = 123
LIMIT 1

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 123

DELETE FROM
	"ComplexEyes" t1
WHERE
	t1."Id" = :Id

