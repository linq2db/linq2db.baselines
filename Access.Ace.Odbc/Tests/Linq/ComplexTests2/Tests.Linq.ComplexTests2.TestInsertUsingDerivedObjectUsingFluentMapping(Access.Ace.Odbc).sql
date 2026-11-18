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
DECLARE @Id Int -- Int32
SET     @Id = 123
DECLARE @Xy NVarChar(7) -- String
SET     @Xy = 'test321'

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
SELECT TOP 1
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- Access.Ace.Odbc AccessODBC
DECLARE @Xy NVarChar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id Int -- Int32
SET     @Id = 123

UPDATE
	[ComplexEyes] [t1]
SET
	[t1].[Xy] = ?
WHERE
	[t1].[Id] = ?

-- Access.Ace.Odbc AccessODBC
SELECT TOP 1
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- Access.Ace.Odbc AccessODBC
DECLARE @Xy NVarChar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id Int -- Int32
SET     @Id = 123

UPDATE
	[ComplexEyes] [t1]
SET
	[t1].[Xy] = ?
WHERE
	[t1].[Id] = ?

-- Access.Ace.Odbc AccessODBC
SELECT TOP 1
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 123

DELETE FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = ?

