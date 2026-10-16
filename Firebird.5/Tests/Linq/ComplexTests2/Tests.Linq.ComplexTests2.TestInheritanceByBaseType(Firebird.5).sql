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
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Integer -- Int32
SET     @Id = 666
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarChar(4) -- String
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
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 666
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarChar(4) -- String
SET     @DogName_First = 'Good'

MERGE INTO "ComplexAnimals" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"AnimalType" = CAST(@AnimalType AS VARCHAR(3)),
		"AnimalType2" = CAST(@AnimalType2 AS VARCHAR(5)),
		"Name" = CAST(@Name AS VARCHAR(8)),
		"Discriminator" = CAST(@Discriminator AS VARCHAR(3)),
		"EyeId" = CAST(@EyeId AS Int),
		"Second" = CAST(@DogName_Second AS VARCHAR(3)),
		"First" = CAST(@DogName_First AS VARCHAR(4))
WHEN NOT MATCHED THEN
	INSERT
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
		CAST(@AnimalType AS VARCHAR(3)),
		CAST(@AnimalType2 AS VARCHAR(5)),
		CAST(@Id AS Int),
		CAST(@Name AS VARCHAR(8)),
		CAST(@Discriminator AS VARCHAR(3)),
		CAST(@EyeId AS Int),
		CAST(@DogName_Second AS VARCHAR(3)),
		CAST(@DogName_First AS VARCHAR(4))
	)

-- Firebird.5 Firebird4
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
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarChar(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Integer -- Int32
SET     @Id = 666

UPDATE
	"ComplexAnimals" "t1"
SET
	"AnimalType" = CAST(@AnimalType AS VARCHAR(3)),
	"AnimalType2" = CAST(@AnimalType2 AS VARCHAR(5)),
	"Name" = CAST(@Name AS VARCHAR(8)),
	"Discriminator" = CAST(@Discriminator AS VARCHAR(3)),
	"EyeId" = CAST(@EyeId AS Int),
	"Second" = CAST(@DogName_Second AS VARCHAR(3)),
	"First" = CAST(@DogName_First AS VARCHAR(4))
WHERE
	"t1"."Id" = @Id

-- Firebird.5 Firebird4
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
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 666

DELETE FROM
	"ComplexAnimals" "t1"
WHERE
	"t1"."Id" = @Id

