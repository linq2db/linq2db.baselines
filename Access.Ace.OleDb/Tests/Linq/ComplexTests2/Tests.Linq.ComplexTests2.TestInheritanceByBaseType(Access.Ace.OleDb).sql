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
DECLARE @AnimalType VarWChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarWChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Integer -- Int32
SET     @Id = 666
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarWChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarWChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarWChar(4) -- String
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

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
DECLARE @AnimalType VarWChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarWChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarWChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarWChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarWChar(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Integer -- Int32
SET     @Id = 666

UPDATE
	[ComplexAnimals] [t1]
SET
	[t1].[AnimalType] = @AnimalType,
	[t1].[AnimalType2] = @AnimalType2,
	[t1].[Name] = @Name,
	[t1].[Discriminator] = @Discriminator,
	[t1].[EyeId] = @EyeId,
	[t1].[Second] = @DogName_Second,
	[t1].[First] = @DogName_First
WHERE
	[t1].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
DECLARE @AnimalType VarWChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarWChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'Cerberus'
DECLARE @Discriminator VarWChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Integer -- Int32
SET     @EyeId = 2
DECLARE @DogName_Second VarWChar(3) -- String
SET     @DogName_Second = 'Dog'
DECLARE @DogName_First VarWChar(4) -- String
SET     @DogName_First = 'Good'
DECLARE @Id Integer -- Int32
SET     @Id = 666

UPDATE
	[ComplexAnimals] [t1]
SET
	[t1].[AnimalType] = @AnimalType,
	[t1].[AnimalType2] = @AnimalType2,
	[t1].[Name] = @Name,
	[t1].[Discriminator] = @Discriminator,
	[t1].[EyeId] = @EyeId,
	[t1].[Second] = @DogName_Second,
	[t1].[First] = @DogName_First
WHERE
	[t1].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 666

DELETE FROM
	[ComplexAnimals] [t1]
WHERE
	[t1].[Id] = @Id

