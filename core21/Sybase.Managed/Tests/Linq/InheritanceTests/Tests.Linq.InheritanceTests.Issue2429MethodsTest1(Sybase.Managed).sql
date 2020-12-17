BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NULL)
	EXECUTE('
		CREATE TABLE [BaseTable]
		(
			[Value] Int NOT NULL,
			[Id]    Int NOT NULL,

			CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
SELECT 100,1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NOT NULL)
	DROP TABLE [BaseTable]

