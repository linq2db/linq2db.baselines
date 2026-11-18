-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Xy VarChar(5) -- String
SET     @Xy = 'Hallo'

INSERT INTO ComplexEyes
(
	Id,
	Xy
)
VALUES
(
	@Id,
	@Xy
)

-- Informix.DB2 Informix
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

INSERT INTO ComplexAnimals
(
	AnimalType,
	AnimalType2,
	Id,
	Name,
	Discriminator,
	EyeId,
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

-- Informix.DB2 Informix
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

INSERT INTO ComplexAnimals
(
	AnimalType,
	AnimalType2,
	Id,
	Name,
	Discriminator
)
VALUES
(
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TestAnimalId Integer -- Int32
SET     @TestAnimalId = NULL

INSERT INTO TestAnimalTable
(
	Id,
	TestAnimalId
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TestAnimalId Integer(4) -- Int32
SET     @TestAnimalId = 1

INSERT INTO TestAnimalTable
(
	Id,
	TestAnimalId
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- Informix.DB2 Informix
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

INSERT INTO ComplexAnimals
(
	AnimalType,
	AnimalType2,
	Id,
	Name,
	Discriminator,
	EyeId,
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

-- Informix.DB2 Informix
SELECT FIRST 1
	t1.AnimalType,
	t1.AnimalType2,
	t1.Id,
	t1.Name,
	t1.Discriminator,
	t1.EyeId,
	t1."Second",
	t1."First"
FROM
	ComplexAnimals t1
WHERE
	t1.Discriminator = 'Dog' AND t1.Id = 666

-- Informix.DB2 Informix
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
	ComplexAnimals t1
SET
	AnimalType = @AnimalType,
	AnimalType2 = @AnimalType2,
	Name = @Name,
	Discriminator = @Discriminator,
	EyeId = @EyeId,
	"Second" = @DogName_Second,
	"First" = @DogName_First
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
SELECT FIRST 1
	t1.AnimalType,
	t1.AnimalType2,
	t1.Id,
	t1.Name,
	t1.Discriminator,
	t1.EyeId,
	t1."Second",
	t1."First"
FROM
	ComplexAnimals t1
WHERE
	t1.Discriminator = 'Dog' AND t1.Id = 666

-- Informix.DB2 Informix
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
	ComplexAnimals t1
SET
	AnimalType = @AnimalType,
	AnimalType2 = @AnimalType2,
	Name = @Name,
	Discriminator = @Discriminator,
	EyeId = @EyeId,
	"Second" = @DogName_Second,
	"First" = @DogName_First
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
SELECT FIRST 1
	t1.AnimalType,
	t1.AnimalType2,
	t1.Id,
	t1.Name,
	t1.Discriminator,
	t1.EyeId,
	t1."Second",
	t1."First"
FROM
	ComplexAnimals t1
WHERE
	t1.Discriminator = 'Dog' AND t1.Id = 666

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 666

DELETE FROM
	ComplexAnimals
WHERE
	ComplexAnimals.Id = @Id

