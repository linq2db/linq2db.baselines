-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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
	"t1"."Discriminator" = 'Dog'
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
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
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"ComplexAnimals" "t1"
SET
	"AnimalType" = CAST(@AnimalType AS VARCHAR(3)),
	"AnimalType2" = CAST(@AnimalType2 AS VARCHAR(3)),
	"Name" = CAST(@Name AS VARCHAR(8)),
	"Discriminator" = CAST(@Discriminator AS VARCHAR(3)),
	"EyeId" = CAST(@EyeId AS Int),
	"Second" = CAST(@DogName_Second AS VARCHAR(1)),
	"First" = CAST(@DogName_First AS VARCHAR(1))
WHERE
	"t1"."Id" = @Id

-- Firebird.4 Firebird4
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
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
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"ComplexAnimals" "t1"
SET
	"AnimalType" = CAST(@AnimalType AS VARCHAR(3)),
	"AnimalType2" = CAST(@AnimalType2 AS VARCHAR(3)),
	"Name" = CAST(@Name AS VARCHAR(8)),
	"Discriminator" = CAST(@Discriminator AS VARCHAR(3)),
	"EyeId" = CAST(@EyeId AS Int),
	"Second" = CAST(@DogName_Second AS VARCHAR(1)),
	"First" = CAST(@DogName_First AS VARCHAR(1))
WHERE
	"t1"."Id" = @Id

-- Firebird.4 Firebird4
DECLARE @AnimalType VarChar(5) -- String
SET     @AnimalType = 'Small'
DECLARE @AnimalType2 VarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = NULL
DECLARE @DogName_Second VarChar -- String
SET     @DogName_Second = NULL
DECLARE @DogName_First VarChar -- String
SET     @DogName_First = NULL

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

