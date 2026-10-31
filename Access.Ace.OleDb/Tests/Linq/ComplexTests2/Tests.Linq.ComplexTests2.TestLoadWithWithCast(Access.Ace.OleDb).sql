-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[AnimalType],
	[t1].[AnimalType2],
	[t1].[Id],
	[t1].[Name],
	[t1].[Discriminator],
	[t1].[EyeId],
	[t1].[Second] as [Second_1],
	[t1].[First] as [First_1],
	[a_Bla].[Id] as [Id_1],
	[a_Bla].[Xy]
FROM
	[ComplexAnimals] [t1]
		LEFT JOIN [ComplexEyes] [a_Bla] ON (IIF([t1].[Discriminator] = 'Dog', [t1].[EyeId], NULL) = [a_Bla].[Id])
ORDER BY
	[t1].[Id]

