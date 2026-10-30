-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
	@Id,
	@Xy
)

-- SQLite.Classic SQLite
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator NVarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId  -- Int32
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
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator,
	@EyeId,
	@DogName_Second,
	@DogName_First
)

-- SQLite.Classic SQLite
DECLARE @AnimalType NVarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 NVarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id  -- Int32
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
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator
)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TestAnimalId  -- Int32
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

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @TestAnimalId  -- Int32
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

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
	@Id,
	@Xy
)

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 123
DECLARE @Xy NVarChar(7) -- String
SET     @Xy = 'test321'

INSERT INTO [ComplexEyes] AS [t1]
(
	[Id],
	[Xy]
)
VALUES
(
	@Id,
	@Xy
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Xy] = @Xy

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @Xy NVarChar(7) -- String
SET     @Xy = 'test321'
DECLARE @Id  -- Int32
SET     @Id = 123

UPDATE
	[ComplexEyes]
SET
	[Xy] = @Xy
WHERE
	[ComplexEyes].[Id] = @Id

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Xy]
FROM
	[ComplexEyes] [t1]
WHERE
	[t1].[Id] = 123
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 123

DELETE FROM
	[ComplexEyes]
WHERE
	[ComplexEyes].[Id] = @Id

