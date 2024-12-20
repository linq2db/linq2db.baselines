BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4192TableNullable') IS NOT NULL)
	DROP TABLE [Issue4192TableNullable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4192TableNullable') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4192TableNullable]
		(
			[Name]     NVarChar(255)     NULL,
			[ParentId] Int               NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = @parentId

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4192TableNullable') IS NOT NULL)
	DROP TABLE [Issue4192TableNullable]

