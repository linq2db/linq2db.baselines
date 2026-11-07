-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @AnimalType NVarchar2(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarchar2(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Int32
SET     @Id = 666
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator NVarchar2(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarchar2(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First NVarchar2(4) -- String
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
	:AnimalType,
	:AnimalType2,
	:Id,
	:Name,
	:Discriminator,
	:EyeId,
	:DogName_Second,
	:DogName_First
)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."AnimalType",
	t1."AnimalType2",
	t1."Id",
	t1."Name",
	t1."Discriminator",
	t1."EyeId",
	t1."Second" as "Second_1",
	t1."First" as "First_1"
FROM
	"ComplexAnimals" t1
WHERE
	t1."Discriminator" = 'Dog' AND t1."Id" = 666
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 666
DECLARE @AnimalType NVarchar2(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarchar2(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator NVarchar2(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarchar2(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First NVarchar2(4) -- String
SET     @DogName_First = 'Good'

MERGE INTO "ComplexAnimals" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"AnimalType" = :AnimalType,
		"AnimalType2" = :AnimalType2,
		"Name" = :Name,
		"Discriminator" = :Discriminator,
		"EyeId" = :EyeId,
		"Second" = :DogName_Second,
		"First" = :DogName_First
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
		:AnimalType,
		:AnimalType2,
		:Id,
		:Name,
		:Discriminator,
		:EyeId,
		:DogName_Second,
		:DogName_First
	)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."AnimalType",
	t1."AnimalType2",
	t1."Id",
	t1."Name",
	t1."Discriminator",
	t1."EyeId",
	t1."Second" as "Second_1",
	t1."First" as "First_1"
FROM
	"ComplexAnimals" t1
WHERE
	t1."Discriminator" = 'Dog' AND t1."Id" = 666
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @AnimalType NVarchar2(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarchar2(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator NVarchar2(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarchar2(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First NVarchar2(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Int32
SET     @Id = 666

UPDATE
	"ComplexAnimals" t1
SET
	"AnimalType" = :AnimalType,
	"AnimalType2" = :AnimalType2,
	"Name" = :Name,
	"Discriminator" = :Discriminator,
	"EyeId" = :EyeId,
	"Second" = :DogName_Second,
	"First" = :DogName_First
WHERE
	t1."Id" = :Id

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."AnimalType",
	t1."AnimalType2",
	t1."Id",
	t1."Name",
	t1."Discriminator",
	t1."EyeId",
	t1."Second" as "Second_1",
	t1."First" as "First_1"
FROM
	"ComplexAnimals" t1
WHERE
	t1."Discriminator" = 'Dog' AND t1."Id" = 666
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 666

DELETE FROM
	"ComplexAnimals" t1
WHERE
	t1."Id" = :Id

