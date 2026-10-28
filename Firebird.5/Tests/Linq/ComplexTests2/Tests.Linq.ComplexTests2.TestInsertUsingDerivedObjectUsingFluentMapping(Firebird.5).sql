-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
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

-- Firebird.5 Firebird4
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
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

-- Firebird.5 Firebird4
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
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

-- Firebird.5 Firebird4
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
	@Id,
	@TestAnimalId
)

-- Firebird.5 Firebird4
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
	@Id,
	@TestAnimalId
)

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Xy VarChar(7) -- String
SET     @Xy = 'test321'

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

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Xy"
FROM
	"ComplexEyes" "t1"
WHERE
	"t1"."Id" = 123
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Xy VarChar(7) -- String
SET     @Xy = 'test321'

MERGE INTO "ComplexEyes" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Xy" = CAST(@Xy AS VARCHAR(7))
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Xy"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Xy AS VARCHAR(7))
	)

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Xy"
FROM
	"ComplexEyes" "t1"
WHERE
	"t1"."Id" = 123
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Xy VarChar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id Integer -- Int32
SET     @Id = 123

UPDATE
	"ComplexEyes" "t1"
SET
	"Xy" = CAST(@Xy AS VARCHAR(7))
WHERE
	"t1"."Id" = @Id

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Xy"
FROM
	"ComplexEyes" "t1"
WHERE
	"t1"."Id" = 123
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 123

DELETE FROM
	"ComplexEyes" "t1"
WHERE
	"t1"."Id" = @Id

