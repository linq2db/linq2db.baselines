BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainTable') IS NOT NULL)
	DROP TABLE [MainTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainTable') IS NULL)
	EXECUTE('
		CREATE TABLE [MainTable]
		(
			[Id]    Int           NOT NULL,
			[Field] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
SELECT 1,'value 1' UNION ALL
SELECT 2,'value 2' UNION ALL
SELECT 3,'value 3'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AssociatedTable') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AssociatedTable') IS NULL)
	EXECUTE('
		CREATE TABLE [AssociatedTable]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [AssociatedTable]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 3

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[MainTable] [t1]
				LEFT JOIN [AssociatedTable] [a_AssociatedOptional] ON [t1].[Id] = [a_AssociatedOptional].[Id]
				LEFT JOIN [MainTable] [a_MainOptional] ON [a_AssociatedOptional].[Id] = [a_MainOptional].[Id]
		WHERE
			[t1].[Id] = @id AND [MainTable].[Id] = [a_MainOptional].[Id] AND
			([MainTable].[Field] = [a_MainOptional].[Field] AND [MainTable].[Field] IS NOT NULL AND [a_MainOptional].[Field] IS NOT NULL OR [MainTable].[Field] IS NULL AND [a_MainOptional].[Field] IS NULL)
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AssociatedTable') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainTable') IS NOT NULL)
	DROP TABLE [MainTable]

