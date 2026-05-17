-- SqlServer.2005.MS SqlServer.2005

SELECT DISTINCT
	CASE
		WHEN (
			SELECT
				COUNT(*)
			FROM
				[Child] [a_Children]
			WHERE
				[g_1].[ParentID] = [a_Children].[ParentID]
		) > 0 AND (
			SELECT
				AVG([a_Children_1].[ParentID])
			FROM
				[Child] [a_Children_1]
			WHERE
				[g_1].[ParentID] = [a_Children_1].[ParentID]
		) > 3
			THEN 1
		ELSE 0
	END
FROM
	[Parent] [g_1]

