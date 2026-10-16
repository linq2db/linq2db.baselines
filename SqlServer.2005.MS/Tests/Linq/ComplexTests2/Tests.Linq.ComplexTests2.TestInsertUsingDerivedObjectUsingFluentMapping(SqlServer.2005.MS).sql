-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Xy NVarChar(40) -- String
SET     @Xy = N'Hallo'

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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @AnimalType NVarChar(40) -- String
SET     @AnimalType = N'Big'
DECLARE @AnimalType2 NVarChar(40) -- String
SET     @AnimalType2 = N'Big'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'FirstDog'
DECLARE @Discriminator NVarChar(40) -- String
SET     @Discriminator = N'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 1
DECLARE @DogName_Second NVarChar(40) -- String
SET     @DogName_Second = N'b'
DECLARE @DogName_First NVarChar(40) -- String
SET     @DogName_First = N'a'

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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @AnimalType NVarChar(40) -- String
SET     @AnimalType = N'Big'
DECLARE @AnimalType2 NVarChar(40) -- String
SET     @AnimalType2 = N'Big'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'WildAnimal'
DECLARE @Discriminator NVarChar(40) -- String
SET     @Discriminator = N'WildAnimal'

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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TestAnimalId Int -- Int32
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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TestAnimalId Int -- Int32
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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 123
DECLARE @Xy NVarChar(40) -- String
SET     @Xy = N'test321'

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

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (1)
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Xy NVarChar(40) -- String
SET     @Xy = N'test321'
DECLARE @Id Int -- Int32
SET     @Id = 123

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
		@Xy
	)
END

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (1)
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Xy NVarChar(40) -- String
SET     @Xy = N'test321'
DECLARE @Id Int -- Int32
SET     @Id = 123

UPDATE
	[ComplexEyes]
SET
	[Xy] = @Xy
WHERE
	[ComplexEyes].[Id] = @Id

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (1)
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 123

DELETE [t1]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = @Id

