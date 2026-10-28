-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
DECLARE @AnimalType NVarChar(40) -- String
SET     @AnimalType = N'Big'
DECLARE @AnimalType2 NVarChar(40) -- String
SET     @AnimalType2 = N'Small'
DECLARE @Id Int -- Int32
SET     @Id = 666
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Cerberus'
DECLARE @Discriminator NVarChar(40) -- String
SET     @Discriminator = N'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarChar(40) -- String
SET     @DogName_Second = N'Dog'
DECLARE @DogName_First NVarChar(40) -- String
SET     @DogName_First = N'Good'

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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
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
	[t1].[Discriminator] = N'Dog' AND [t1].[Id] = 666

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 666
DECLARE @AnimalType NVarChar(40) -- String
SET     @AnimalType = N'Big'
DECLARE @AnimalType2 NVarChar(40) -- String
SET     @AnimalType2 = N'Small'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Cerberus'
DECLARE @Discriminator NVarChar(40) -- String
SET     @Discriminator = N'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarChar(40) -- String
SET     @DogName_Second = N'Dog'
DECLARE @DogName_First NVarChar(40) -- String
SET     @DogName_First = N'Good'

MERGE INTO [ComplexAnimals] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[AnimalType] = @AnimalType,
		[AnimalType2] = @AnimalType2,
		[Name] = @Name,
		[Discriminator] = @Discriminator,
		[EyeId] = @EyeId,
		[Second] = @DogName_Second,
		[First] = @DogName_First
WHEN NOT MATCHED THEN
	INSERT
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
	);

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
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
	[t1].[Discriminator] = N'Dog' AND [t1].[Id] = 666

-- SqlServer.2014.MS SqlServer.2014
DECLARE @AnimalType NVarChar(40) -- String
SET     @AnimalType = N'Big'
DECLARE @AnimalType2 NVarChar(40) -- String
SET     @AnimalType2 = N'Small'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Cerberus'
DECLARE @Discriminator NVarChar(40) -- String
SET     @Discriminator = N'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second NVarChar(40) -- String
SET     @DogName_Second = N'Dog'
DECLARE @DogName_First NVarChar(40) -- String
SET     @DogName_First = N'Good'
DECLARE @Id Int -- Int32
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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
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
	[t1].[Discriminator] = N'Dog' AND [t1].[Id] = 666

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 666

DELETE [t1]
FROM
	[ComplexAnimals] [t1]
WHERE
	[t1].[Id] = @Id

