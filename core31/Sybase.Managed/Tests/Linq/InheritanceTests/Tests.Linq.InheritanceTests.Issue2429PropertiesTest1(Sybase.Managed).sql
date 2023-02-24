BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NOT NULL)
	DROP TABLE [BaseTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NULL)
	EXECUTE('
		CREATE TABLE [BaseTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL,

			CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
SELECT 1,100

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NOT NULL)
	DROP TABLE [BaseTable]

