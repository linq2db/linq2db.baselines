-- SqlServer.2005

SELECT
	[p].[ParentID],
	CASE
		WHEN [c_2].[cond] IS NULL THEN 0
		ELSE [c_2].[cond]
	END
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [cond]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [c_2]

-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

