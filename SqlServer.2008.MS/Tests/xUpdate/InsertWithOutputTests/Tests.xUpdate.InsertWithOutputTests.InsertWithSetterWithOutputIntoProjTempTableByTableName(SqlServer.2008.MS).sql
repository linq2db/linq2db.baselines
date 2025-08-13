BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#TInserted]
(
	[ParentID] Int NOT NULL,
	[ChildID]  Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[c_1].[ParentID] - 4242,
	[c_1].[ChildID]
FROM
	[tempdb]..[#TInserted] [c_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#TInserted]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TInserted]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

