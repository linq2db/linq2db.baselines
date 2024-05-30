BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NULL)
	CREATE TABLE [NotNullParent]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NULL)
	CREATE TABLE [NotNullChild]
	(
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON [p].[ID] = [a_ChildInner].[ParentID]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [NotNullParent]

