-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DogName NVarChar(3) -- String
SET     @DogName = 'Rex'
DECLARE @Meta_Kind NVarChar(3) -- String
SET     @Meta_Kind = 'Dog'

INSERT INTO [NestedDiscriminator]
(
	[Id],
	[DogName],
	[Kind]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @CatName NVarChar(3) -- String
SET     @CatName = 'Tom'
DECLARE @Meta_Kind NVarChar(3) -- String
SET     @Meta_Kind = 'Cat'

INSERT INTO [NestedDiscriminator]
(
	[Id],
	[CatName],
	[Kind]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[DogName],
	[t1].[Kind]
FROM
	[NestedDiscriminator] [t1]
WHERE
	[t1].[Kind] = 'Dog'
ORDER BY
	[t1].[Id]

