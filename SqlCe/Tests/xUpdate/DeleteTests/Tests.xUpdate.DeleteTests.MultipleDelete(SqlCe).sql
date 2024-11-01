BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

BeforeExecute
-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 1000,NULL UNION ALL
SELECT 1001,NULL

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = 1000 AND [Parent].[Value1] IS NULL OR
	[Parent].[ParentID] = 1001 AND [Parent].[Value1] IS NULL

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

