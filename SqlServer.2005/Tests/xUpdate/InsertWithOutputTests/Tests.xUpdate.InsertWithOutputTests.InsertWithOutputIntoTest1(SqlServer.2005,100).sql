-- SqlServer.2005

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2005

CREATE TABLE [tempdb]..[#TInserted]
(
	[ParentID] Int NOT NULL,
	[ChildID]  Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
)

-- SqlServer.2005
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	INSERTED.[ChildID],
	INSERTED.[ParentID] + @param
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

-- SqlServer.2005
DECLARE @param Int -- Int32
SET     @param = 100

SELECT
	[c_1].[ParentID] - @param,
	[c_1].[ChildID]
FROM
	[tempdb]..[#TInserted] [c_1]

-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2005

DROP TABLE [tempdb]..[#TInserted]

-- SqlServer.2005

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

