BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[Value1] = 11

BeforeExecute
-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[c_1].[ParentID] + 1000,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[Value1] = 11

