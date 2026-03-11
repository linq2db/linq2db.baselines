-- SqlServer.2008.MS SqlServer.2008

SELECT DISTINCT
	CASE
		WHEN (
			SELECT
				AVG([a_Children].[ParentID])
			FROM
				[Child] [a_Children]
			WHERE
				[g_1].[ParentID] = [a_Children].[ParentID]
		) > 3
			THEN 1
		ELSE 0
	END
FROM
	[Parent] [g_1]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children_1]
		WHERE
			[g_1].[ParentID] = [a_Children_1].[ParentID]
	) > 0

