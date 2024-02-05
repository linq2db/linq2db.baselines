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
	[a_MainRequired].[Field] = 'test'
FROM
	[MainTable] [a_MainRequired],
	[MainTable] [_]
		INNER JOIN [AssociatedTable] [a_AssociatedRequired] ON [_].[Id] = [a_AssociatedRequired].[Id]
WHERE
	[_].[Id] = @id AND [a_AssociatedRequired].[Id] = [a_MainRequired].[Id]

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

