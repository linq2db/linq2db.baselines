-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]

