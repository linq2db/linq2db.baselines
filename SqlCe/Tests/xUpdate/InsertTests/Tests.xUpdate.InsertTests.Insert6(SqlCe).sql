-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[Value1] = 11

-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[c_1].[ParentID] + 1000 as [c1],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[Value1] = 11

