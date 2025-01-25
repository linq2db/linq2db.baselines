BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithBool') IS NOT NULL)
	DROP TABLE [WhereWithBool]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithBool') IS NULL)
	EXECUTE('
		CREATE TABLE [WhereWithBool]
		(
			[Id]        Int NOT NULL,
			[BoolValue] Bit NOT NULL,

			CONSTRAINT [PK_WhereWithBool] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
SELECT 1,1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] = 1 AND [x].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithBool') IS NOT NULL)
	DROP TABLE [WhereWithBool]

