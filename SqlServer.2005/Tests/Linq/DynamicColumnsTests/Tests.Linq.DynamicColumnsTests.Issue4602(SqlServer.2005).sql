BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicParent]', N'U') IS NOT NULL)
	DROP TABLE [DynamicParent]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicParent]', N'U') IS NULL)
	CREATE TABLE [DynamicParent]
	(
		[ID] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicChild]', N'U') IS NOT NULL)
	DROP TABLE [DynamicChild]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicChild]', N'U') IS NULL)
	CREATE TABLE [DynamicChild]
	(
		[ID]       Int  NOT NULL IDENTITY,
		[ParentID] Int  NOT NULL,

		CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[it].[ID]
FROM
	[DynamicParent] [it]
		LEFT JOIN [DynamicChild] [a_Child] ON [it].[ID] = [a_Child].[ParentID]
WHERE
	[a_Child].[ID] = 123 AND [a_Child].[ID] IS NOT NULL

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicChild]', N'U') IS NOT NULL)
	DROP TABLE [DynamicChild]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicParent]', N'U') IS NOT NULL)
	DROP TABLE [DynamicParent]

