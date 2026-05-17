-- SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2019

CREATE TABLE [tempdb]..[#TInserted]
(
	[ParentID] Int NOT NULL,
	[ChildID]  Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
)

-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	INSERTED.[ChildID],
	INSERTED.[ParentID] + 4242
INTO [tempdb]..[#TInserted]
(
	[ChildID],
	[ParentID]
)
SELECT
	[c_1].[ParentID],
	@id
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

-- SqlServer.2019

SELECT
	[c_1].[ParentID] - 4242,
	[c_1].[ChildID]
FROM
	[tempdb]..[#TInserted] [c_1]

-- SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TInserted]

-- SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

