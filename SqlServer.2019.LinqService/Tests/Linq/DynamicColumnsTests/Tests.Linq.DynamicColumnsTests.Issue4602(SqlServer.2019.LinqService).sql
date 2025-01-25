BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DynamicParent]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[DynamicParent]', N'U') IS NULL)
	CREATE TABLE [DynamicParent]
	(
		[ID] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DynamicChild]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[DynamicChild]', N'U') IS NULL)
	CREATE TABLE [DynamicChild]
	(
		[ID]       Int  NOT NULL IDENTITY,
		[ParentID] Int  NOT NULL,

		CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DynamicChild]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DynamicParent]

