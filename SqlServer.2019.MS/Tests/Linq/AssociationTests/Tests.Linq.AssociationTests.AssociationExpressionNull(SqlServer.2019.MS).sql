﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NULL)
	CREATE TABLE [NotNullParent]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NULL)
	CREATE TABLE [NotNullChild]
	(
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[a_ChildOuter].[ParentID]
FROM
	[NotNullParent] [p]
		LEFT JOIN [NotNullChild] [a_ChildOuter] ON [p].[ID] = [a_ChildOuter].[ParentID]
ORDER BY
	[p].[ID]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [NotNullParent]

