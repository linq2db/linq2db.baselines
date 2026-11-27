-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SomeText NVarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO [EnumConverterTable]
(
	[Id],
	[SomeText]
)
VALUES
(
	@Id,
	@SomeText
)

-- SqlCe
SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[EnumConverterTable] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'

-- SqlCe
SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[EnumConverterTable] [e]
WHERE
	[e].[Id] = 1

