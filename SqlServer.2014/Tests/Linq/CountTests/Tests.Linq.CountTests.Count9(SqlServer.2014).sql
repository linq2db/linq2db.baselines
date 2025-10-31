BeforeExecute
-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

BeforeExecute
-- SqlServer.2014

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]

