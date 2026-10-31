-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[TestAnimalId],
	[a_TestAnimal].[AnimalType],
	[a_TestAnimal].[AnimalType2],
	[a_TestAnimal].[Id] as [Id_1],
	[a_TestAnimal].[Name],
	[a_TestAnimal].[Discriminator],
	[a_TestAnimal].[EyeId],
	[a_TestAnimal].[Second] as [Second_1],
	[a_TestAnimal].[First] as [First_1],
	[a_Bla].[Id] as [Id_2],
	[a_Bla].[Xy]
FROM
	([TestAnimalTable] [t1]
		LEFT JOIN [ComplexAnimals] [a_TestAnimal] ON ([t1].[TestAnimalId] = [a_TestAnimal].[Id]))
		LEFT JOIN [ComplexEyes] [a_Bla] ON (IIF([a_TestAnimal].[Discriminator] = 'Dog', [a_TestAnimal].[EyeId], NULL) = [a_Bla].[Id])
ORDER BY
	[t1].[Id]

