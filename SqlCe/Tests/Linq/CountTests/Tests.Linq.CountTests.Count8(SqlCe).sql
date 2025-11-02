-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [p]
		INNER JOIN [Parent] [a_Parent] ON [p].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [p]
		INNER JOIN [Parent] [a_Parent] ON [p].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

-- SqlCe

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]

