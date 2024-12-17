BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NOT NULL)
	DROP TABLE [AsyncDataTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NULL)
	CREATE TABLE [AsyncDataTable]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				[AsyncDataTable] [c_1]
			WHERE
				[c_1].[Id] = @p
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NOT NULL)
	DROP TABLE [AsyncDataTable]

