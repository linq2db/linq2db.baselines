BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NULL)
	CREATE TABLE [DynamicTable]
	(
		[ID]             Int  NOT NULL IDENTITY,
		[Not Identifier] Int  NOT NULL,
		[Some Value]     Int  NOT NULL,

		CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
SELECT 77,5 UNION ALL
SELECT 77,5

BeforeExecute
-- SqlServer.2005

SELECT
	[g_1].[Not Identifier],
	COUNT(*),
	SUM([g_1].[Some Value])
FROM
	[DynamicTable] [g_1]
GROUP BY
	[g_1].[Not Identifier]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicTable]

