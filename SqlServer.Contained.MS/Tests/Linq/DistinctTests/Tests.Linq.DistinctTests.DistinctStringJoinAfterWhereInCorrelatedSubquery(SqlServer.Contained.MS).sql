-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[p].[ParentID],
	Coalesce((
		SELECT
			STRING_AGG([t1].[Ids], N',')
		FROM
			(
				SELECT DISTINCT
					CAST([x].[ChildID] AS NVarChar(11)) as [Ids]
				FROM
					[Child] [x]
				WHERE
					[x].[ParentID] = [p].[ParentID] AND CAST([x].[ChildID] AS NVarChar(11)) <> N'11'
			) [t1]
	), N'')
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

