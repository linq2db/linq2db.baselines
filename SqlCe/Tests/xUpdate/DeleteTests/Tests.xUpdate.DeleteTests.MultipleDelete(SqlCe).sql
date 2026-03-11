-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 1000,NULL UNION ALL
SELECT 1001,NULL

-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = 1000 AND [Parent].[Value1] IS NULL OR
	[Parent].[ParentID] = 1001 AND [Parent].[Value1] IS NULL

-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

