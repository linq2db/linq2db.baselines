﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [TInserted]
(
	[ParentID] Int NOT NULL,
	[ChildID]  Int NOT NULL,

	CONSTRAINT [PK_TInserted] PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @param Int -- Int32
SET     @param = 1201

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	[INSERTED].[ParentID],
	[INSERTED].[ChildID]
INTO [TInserted]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@param
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[TInserted] [c_1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [TInserted]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

