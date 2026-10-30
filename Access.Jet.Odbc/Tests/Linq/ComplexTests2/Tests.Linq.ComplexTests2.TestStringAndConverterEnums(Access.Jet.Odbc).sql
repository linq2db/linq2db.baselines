-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Xy NVarChar(5) -- String
SET     @Xy = 'Hallo'

INSERT INTO [ComplexEyes]
(
	[Id],
	[Xy]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator NVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = 1
DECLARE @DogName_Second NVarChar(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First NVarChar(1) -- String
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
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator NVarChar(10) -- String
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
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
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
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
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
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
	[x].[Discriminator] = 'Dog' AND [x].[AnimalType] = 'Big'

-- Access.Jet.Odbc AccessODBC
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'

SELECT TOP 1
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
	[x].[Discriminator] = 'Dog' AND [x].[AnimalType] = ?

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
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
	[x].[Discriminator] = 'Dog' AND [x].[AnimalType2] = 'Big'

-- Access.Jet.Odbc AccessODBC
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'

SELECT TOP 1
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
	[x].[Discriminator] = 'Dog' AND [x].[AnimalType2] = ?

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
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
	[x].[Discriminator] = 'SuperWildAnimal' OR [x].[Discriminator] = 'Dog'

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[x].[Id],
	[x].[TestAnimalId]
FROM
	[TestAnimalTable] [x]
		INNER JOIN [ComplexAnimals] [a_TestAnimal] ON ([x].[TestAnimalId] = [a_TestAnimal].[Id])
WHERE
	[a_TestAnimal].[Discriminator] = 'Dog' AND [a_TestAnimal].[EyeId] = 1

