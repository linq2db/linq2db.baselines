BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NOT NULL)
	DROP TABLE [NotNullParent]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NULL)
	CREATE TABLE [NotNullParent]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NOT NULL)
	DROP TABLE [NotNullChild]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NULL)
	CREATE TABLE [NotNullChild]
	(
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON [p].[ID] = [a_ChildInner].[ParentID]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NOT NULL)
	DROP TABLE [NotNullChild]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NOT NULL)
	DROP TABLE [NotNullParent]

