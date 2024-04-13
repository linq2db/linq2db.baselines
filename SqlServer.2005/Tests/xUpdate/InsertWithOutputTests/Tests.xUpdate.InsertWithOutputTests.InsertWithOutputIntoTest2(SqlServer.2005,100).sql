BeforeExecute
-- SqlServer.2005

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2005

CREATE TABLE [tempdb]..[#TInserted]
(
	[ParentID] Int NOT NULL,
	[ChildID]  Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	[INSERTED].[ParentID],
	[INSERTED].[ChildID]
INTO [tempdb]..[#TInserted]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	1101
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[tempdb]..[#TInserted] [c_1]

BeforeExecute
-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2005

DROP TABLE [tempdb]..[#TInserted]

BeforeExecute
-- SqlServer.2005

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

