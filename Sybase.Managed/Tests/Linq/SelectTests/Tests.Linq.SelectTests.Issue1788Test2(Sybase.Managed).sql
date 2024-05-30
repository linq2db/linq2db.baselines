BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1788') IS NOT NULL)
	DROP TABLE [Table1788]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1788') IS NULL)
	EXECUTE('
		CREATE TABLE [Table1788]
		(
			[Id]     Int NOT NULL,
			[Value1] Int NOT NULL,

			CONSTRAINT [PK_Table1788] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
SELECT 1,11 UNION ALL
SELECT 2,22 UNION ALL
SELECT 3,33

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[l].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN [Table1788] [l] ON [l].[Id] = [p].[Id] + 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1788') IS NOT NULL)
	DROP TABLE [Table1788]

