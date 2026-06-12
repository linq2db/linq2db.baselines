-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DogName NVarChar(40) -- String
SET     @DogName = N'Rex'
DECLARE @Meta_Kind NVarChar(20) -- String
SET     @Meta_Kind = N'Dog'

INSERT INTO [NestedDiscriminator]
(
	[Id],
	[DogName],
	[Kind]
)
VALUES
(
	@Id,
	@DogName,
	@Meta_Kind
)

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @CatName NVarChar(40) -- String
SET     @CatName = N'Tom'
DECLARE @Meta_Kind NVarChar(20) -- String
SET     @Meta_Kind = N'Cat'

INSERT INTO [NestedDiscriminator]
(
	[Id],
	[CatName],
	[Kind]
)
VALUES
(
	@Id,
	@CatName,
	@Meta_Kind
)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[DogName],
	[t1].[Kind]
FROM
	[NestedDiscriminator] [t1]
WHERE
	[t1].[Kind] = N'Dog'
ORDER BY
	[t1].[Id]

