BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithString') IS NOT NULL)
	DROP TABLE [WhereWithString]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithString') IS NULL)
	EXECUTE('
		CREATE TABLE [WhereWithString]
		(
			[Id]          Int           NOT NULL,
			[StringValue] NVarChar(255)     NULL,

			CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringValue UniVarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE '%Str%' ESCAPE '~' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithString') IS NOT NULL)
	DROP TABLE [WhereWithString]

