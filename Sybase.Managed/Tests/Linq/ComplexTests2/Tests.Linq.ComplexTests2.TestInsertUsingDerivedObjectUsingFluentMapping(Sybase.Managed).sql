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
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Xy UniVarChar(7) -- String
SET     @Xy = 'test321'

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
SELECT TOP 1
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- Sybase.Managed Sybase
DECLARE @Xy UniVarChar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Xy_1 UniVarChar(7) -- String
SET     @Xy_1 = 'test321'

UPDATE
	[ComplexEyes]
SET
	[Xy] = @Xy
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [ComplexEyes]
	(
		[Id],
		[Xy]
	)
	VALUES
	(
		@Id,
		@Xy_1
	)
END

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- Sybase.Managed Sybase
DECLARE @Xy UniVarChar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id Integer -- Int32
SET     @Id = 123

UPDATE
	[ComplexEyes]
SET
	[Xy] = @Xy
WHERE
	[ComplexEyes].[Id] = @Id

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 123

DELETE FROM [ComplexEyes]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = @Id

