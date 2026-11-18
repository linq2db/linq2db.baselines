-- SqlServer.CS.MS SqlServer.2025
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

-- SqlServer.CS.MS SqlServer.2025
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

-- SqlServer.CS.MS SqlServer.2025
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

-- SqlServer.CS.MS SqlServer.2025
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

-- SqlServer.CS.MS SqlServer.2025
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

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[x].[AnimalType],
	[x].[AnimalType2],
	[x].[Id],
	[x].[Name],
	[x].[Discriminator],
	[x].[EyeId],
	[x].[Second],
	[x].[First]
FROM
	[ComplexAnimals] [x]
WHERE
	[x].[Discriminator] = N'Dog' AND [x].[AnimalType] = N'Big'

-- SqlServer.CS.MS SqlServer.2025
DECLARE @AnimalType NVarChar(40) -- String
SET     @AnimalType = N'Big'

SELECT TOP (1)
	[x].[AnimalType],
	[x].[AnimalType2],
	[x].[Id],
	[x].[Name],
	[x].[Discriminator],
	[x].[EyeId],
	[x].[Second],
	[x].[First]
FROM
	[ComplexAnimals] [x]
WHERE
	[x].[Discriminator] = N'Dog' AND [x].[AnimalType] = @AnimalType

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[x].[AnimalType],
	[x].[AnimalType2],
	[x].[Id],
	[x].[Name],
	[x].[Discriminator],
	[x].[EyeId],
	[x].[Second],
	[x].[First]
FROM
	[ComplexAnimals] [x]
WHERE
	[x].[Discriminator] = N'Dog' AND [x].[AnimalType2] = N'Big'

-- SqlServer.CS.MS SqlServer.2025
DECLARE @AnimalType2 NVarChar(40) -- String
SET     @AnimalType2 = N'Big'

SELECT TOP (1)
	[x].[AnimalType],
	[x].[AnimalType2],
	[x].[Id],
	[x].[Name],
	[x].[Discriminator],
	[x].[EyeId],
	[x].[Second],
	[x].[First]
FROM
	[ComplexAnimals] [x]
WHERE
	[x].[Discriminator] = N'Dog' AND [x].[AnimalType2] = @AnimalType2

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[x].[AnimalType],
	[x].[AnimalType2],
	[x].[Id],
	[x].[Name],
	[x].[Discriminator],
	[x].[EyeId],
	[x].[Second],
	[x].[First]
FROM
	[ComplexAnimals] [x]
WHERE
	[x].[Discriminator] = N'SuperWildAnimal' OR [x].[Discriminator] = N'Dog'

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[x].[Id],
	[x].[TestAnimalId]
FROM
	[TestAnimalTable] [x]
		INNER JOIN [ComplexAnimals] [a_TestAnimal] ON [x].[TestAnimalId] = [a_TestAnimal].[Id]
WHERE
	[a_TestAnimal].[Discriminator] = N'Dog' AND [a_TestAnimal].[EyeId] = 1

