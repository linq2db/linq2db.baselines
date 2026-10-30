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
	[t1].[Discriminator] = 'Dog'

-- Access.Jet.Odbc AccessODBC
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
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
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[ComplexAnimals] [t1]
SET
	[t1].[AnimalType] = ?,
	[t1].[AnimalType2] = ?,
	[t1].[Name] = ?,
	[t1].[Discriminator] = ?,
	[t1].[EyeId] = ?,
	[t1].[Second] = ?,
	[t1].[First] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
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
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[ComplexAnimals] [t1]
SET
	[t1].[AnimalType] = ?,
	[t1].[AnimalType2] = ?,
	[t1].[Name] = ?,
	[t1].[Discriminator] = ?,
	[t1].[EyeId] = ?,
	[t1].[Second] = ?,
	[t1].[First] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @AnimalType NVarChar(5) -- String
SET     @AnimalType = 'Small'
DECLARE @AnimalType2 NVarChar(5) -- String
SET     @AnimalType2 = 'Small'
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Discriminator NVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int -- Int32
SET     @EyeId = NULL
DECLARE @DogName_Second NVarChar -- String
SET     @DogName_Second = NULL
DECLARE @DogName_First NVarChar -- String
SET     @DogName_First = NULL

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

