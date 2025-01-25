BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NOT NULL)
	DROP TABLE [AsyncDataTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NULL)
	CREATE TABLE [AsyncDataTable]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [AsyncDataTable]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7 UNION ALL
SELECT 8 UNION ALL
SELECT 9 UNION ALL
SELECT 10

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 2

SELECT TOP (1)
	@Id,
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id_1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NOT NULL)
	DROP TABLE [AsyncDataTable]

