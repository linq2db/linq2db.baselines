-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT([t3].[set_col_0__])
FROM
	(
		SELECT
			[t1].[PersonID] as [set_col_0__]
		FROM
			[Person] [t1]
		UNION ALL
		SELECT
			[t2].[ParentID] as [set_col_0__]
		FROM
			[Parent] [t2]
	) [t3]

