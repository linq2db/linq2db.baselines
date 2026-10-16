-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Xy UniVarChar(5) -- String
SET     @Xy = 'Hallo'

INSERT INTO [ComplexEyes]
(
	[Id],
	[Xy]
)
VALUES
(
	@Id,
	@Xy
)

-- Sybase.Managed Sybase
DECLARE @AnimalType UniVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 UniVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator UniVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 1
DECLARE @DogName_Second UniVarChar(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First UniVarChar(1) -- String
SET     @DogName_First = 'a'

INSERT INTO [ComplexAnimals]
(
	[AnimalType],
	[AnimalType2],
	[Id],
	[Name],
	[Discriminator],
	[EyeId],
	[Second],
	[First]
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

-- Sybase.Managed Sybase
DECLARE @AnimalType UniVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 UniVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name UniVarChar(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator UniVarChar(10) -- String
SET     @Discriminator = 'WildAnimal'

INSERT INTO [ComplexAnimals]
(
	[AnimalType],
	[AnimalType2],
	[Id],
	[Name],
	[Discriminator]
)
VALUES
(
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TestAnimalId Integer -- Int32
SET     @TestAnimalId = NULL

INSERT INTO [TestAnimalTable]
(
	[Id],
	[TestAnimalId]
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TestAnimalId Integer -- Int32
SET     @TestAnimalId = 1

INSERT INTO [TestAnimalTable]
(
	[Id],
	[TestAnimalId]
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- Sybase.Managed Sybase
DECLARE @AnimalType UniVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 UniVarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Integer -- Int32
SET     @Id = 666
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator UniVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second UniVarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First UniVarChar(4) -- String
SET     @DogName_First = 'Good'

INSERT INTO [ComplexAnimals]
(
	[AnimalType],
	[AnimalType2],
	[Id],
	[Name],
	[Discriminator],
	[EyeId],
	[Second],
	[First]
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

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[AnimalType],
	[t1].[AnimalType2],
	[t1].[Id],
	[t1].[Name],
	[t1].[Discriminator],
	[t1].[EyeId],
	[t1].[Second],
	[t1].[First]
FROM
	[ComplexAnimals] [t1]
WHERE
	[t1].[Discriminator] = 'Dog' AND [t1].[Id] = 666

-- Sybase.Managed Sybase
DECLARE @AnimalType UniVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 UniVarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator UniVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second UniVarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First UniVarChar(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Integer -- Int32
SET     @Id = 666
DECLARE @AnimalType_1 UniVarChar(3) -- String
SET     @AnimalType_1 = 'Big'
DECLARE @AnimalType2_1 UniVarChar(5) -- String
SET     @AnimalType2_1 = 'Small'
DECLARE @Name_1 UniVarChar(8) -- String
SET     @Name_1 = 'Cerberus'
DECLARE @Discriminator_1 UniVarChar(3) -- String
SET     @Discriminator_1 = 'Dog'
DECLARE @EyeId_1 Integer -- Int32
SET     @EyeId_1 = 2
DECLARE @DogName_Second_1 UniVarChar(3) -- String
SET     @DogName_Second_1 = 'Dog'
DECLARE @DogName_First_1 UniVarChar(4) -- String
SET     @DogName_First_1 = 'Good'

UPDATE
	[ComplexAnimals]
SET
	[AnimalType] = @AnimalType,
	[AnimalType2] = @AnimalType2,
	[Name] = @Name,
	[Discriminator] = @Discriminator,
	[EyeId] = @EyeId,
	[Second] = @DogName_Second,
	[First] = @DogName_First
FROM
	[ComplexAnimals] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [ComplexAnimals]
	(
		[AnimalType],
		[AnimalType2],
		[Id],
		[Name],
		[Discriminator],
		[EyeId],
		[Second],
		[First]
	)
	VALUES
	(
		@AnimalType_1,
		@AnimalType2_1,
		@Id,
		@Name_1,
		@Discriminator_1,
		@EyeId_1,
		@DogName_Second_1,
		@DogName_First_1
	)
END

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[AnimalType],
	[t1].[AnimalType2],
	[t1].[Id],
	[t1].[Name],
	[t1].[Discriminator],
	[t1].[EyeId],
	[t1].[Second],
	[t1].[First]
FROM
	[ComplexAnimals] [t1]
WHERE
	[t1].[Discriminator] = 'Dog' AND [t1].[Id] = 666

-- Sybase.Managed Sybase
DECLARE @AnimalType UniVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 UniVarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator UniVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second UniVarChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First UniVarChar(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Integer -- Int32
SET     @Id = 666

UPDATE
	[ComplexAnimals]
SET
	[AnimalType] = @AnimalType,
	[AnimalType2] = @AnimalType2,
	[Name] = @Name,
	[Discriminator] = @Discriminator,
	[EyeId] = @EyeId,
	[Second] = @DogName_Second,
	[First] = @DogName_First
WHERE
	[ComplexAnimals].[Id] = @Id

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[AnimalType],
	[t1].[AnimalType2],
	[t1].[Id],
	[t1].[Name],
	[t1].[Discriminator],
	[t1].[EyeId],
	[t1].[Second],
	[t1].[First]
FROM
	[ComplexAnimals] [t1]
WHERE
	[t1].[Discriminator] = 'Dog' AND [t1].[Id] = 666

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 666

DELETE FROM [ComplexAnimals]
FROM
	[ComplexAnimals] [t1]
WHERE
	[t1].[Id] = @Id

