-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeText UniVarChar(13) -- String
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

-- Sybase.Managed Sybase
SELECT TOP 2
	[e].[Id],
	[e].[SomeText]
FROM
	[EnumConverterTable] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'

-- Sybase.Managed Sybase
SELECT TOP 2
	[e].[Id],
	[e].[SomeText]
FROM
	[EnumConverterTable] [e]
WHERE
	[e].[Id] = 1

