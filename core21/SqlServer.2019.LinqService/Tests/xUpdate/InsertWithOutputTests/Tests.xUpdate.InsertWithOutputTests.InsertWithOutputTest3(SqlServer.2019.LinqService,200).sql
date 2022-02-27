BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id_2 Int -- Int32
SET     @id_2 = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	[INSERTED].[ChildID],
	[INSERTED].[ParentID]
SELECT
	[c_1].[ParentID],
	@id_2
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

