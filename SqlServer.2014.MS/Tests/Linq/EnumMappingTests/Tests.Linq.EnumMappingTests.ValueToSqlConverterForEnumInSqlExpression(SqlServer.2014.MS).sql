-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SomeText NVarChar(4000) -- String
SET     @SomeText = N'Value1_suffix'

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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[EnumConverterTable] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[EnumConverterTable] [e]
WHERE
	[e].[Id] = 1

