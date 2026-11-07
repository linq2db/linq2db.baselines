-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Xy VarWChar(5) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @AnimalType VarWChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarWChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator VarWChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 1
DECLARE @DogName_Second VarWChar(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First VarWChar(1) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @AnimalType VarWChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarWChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator VarWChar(10) -- String
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @AnimalType VarWChar(3) -- String
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
	[x].[Discriminator] = 'Dog' AND [x].[AnimalType] = @AnimalType

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @AnimalType2 VarWChar(3) -- String
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
	[x].[Discriminator] = 'Dog' AND [x].[AnimalType2] = @AnimalType2

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 1
	[x].[Id],
	[x].[TestAnimalId]
FROM
	[TestAnimalTable] [x]
		INNER JOIN [ComplexAnimals] [a_TestAnimal] ON ([x].[TestAnimalId] = [a_TestAnimal].[Id])
WHERE
	[a_TestAnimal].[Discriminator] = 'Dog' AND [a_TestAnimal].[EyeId] = 1

