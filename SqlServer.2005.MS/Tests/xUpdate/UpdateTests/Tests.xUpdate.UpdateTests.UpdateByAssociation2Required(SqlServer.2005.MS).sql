BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainTable]', N'U') IS NOT NULL)
	DROP TABLE [MainTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainTable]', N'U') IS NULL)
	CREATE TABLE [MainTable]
	(
		[Id]    Int            NOT NULL,
		[Field] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
SELECT 1,N'value 1' UNION ALL
SELECT 2,N'value 2' UNION ALL
SELECT 3,N'value 3'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NULL)
	CREATE TABLE [AssociatedTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [AssociatedTable]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainRequired]
SET
	[a_MainRequired].[Field] = N'test'
FROM
	[AssociatedTable] [p]
		INNER JOIN [MainTable] [a_MainRequired] ON [p].[Id] = [a_MainRequired].[Id]
WHERE
	[p].[Id] = @id

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainTable]', N'U') IS NOT NULL)
	DROP TABLE [MainTable]

