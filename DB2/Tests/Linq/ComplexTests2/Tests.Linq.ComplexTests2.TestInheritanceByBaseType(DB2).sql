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
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 666
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 666
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer(4) -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarChar(4) -- String
SET     @DogName_First = 'Good'

MERGE INTO "ComplexAnimals" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"AnimalType" = CAST(@AnimalType AS NVarChar(3)),
		"AnimalType2" = CAST(@AnimalType2 AS NVarChar(5)),
		"Name" = CAST(@Name AS NVarChar(8)),
		"Discriminator" = CAST(@Discriminator AS NVarChar(3)),
		"EyeId" = CAST(@EyeId AS Int),
		"Second" = CAST(@DogName_Second AS NVarChar(3)),
		"First" = CAST(@DogName_First AS NVarChar(4))
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
		CAST(@AnimalType AS NVarChar(3)),
		CAST(@AnimalType2 AS NVarChar(5)),
		CAST(@Id AS Int),
		CAST(@Name AS NVarChar(8)),
		CAST(@Discriminator AS NVarChar(3)),
		CAST(@EyeId AS Int),
		CAST(@DogName_Second AS NVarChar(3)),
		CAST(@DogName_First AS NVarChar(4))
	)

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer(4) -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarChar(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 666

UPDATE
	"ComplexAnimals" "t1"
SET
	"AnimalType" = @AnimalType,
	"AnimalType2" = @AnimalType2,
	"Name" = @Name,
	"Discriminator" = @Discriminator,
	"EyeId" = @EyeId,
	"Second" = @DogName_Second,
	"First" = @DogName_First
WHERE
	"t1"."Id" = @Id

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 666

DELETE FROM
	"ComplexAnimals" "t1"
WHERE
	"t1"."Id" = @Id

