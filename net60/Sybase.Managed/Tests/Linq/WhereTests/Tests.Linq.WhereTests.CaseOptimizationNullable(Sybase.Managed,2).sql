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

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
SELECT 1,'Str1'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @filterValue Integer -- Int32
SET     @filterValue = 2

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[Id] = @filterValue

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithString') IS NOT NULL)
	DROP TABLE [WhereWithString]

