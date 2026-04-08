-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t2].[ParentID]
FROM
	(
		SELECT
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
		UNION
		SELECT
			[c_2].[ParentID]
		FROM
			[Parent] [c_2]
		UNION ALL
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[c_3].[ParentID]
				FROM
					[Parent] [c_3]
				UNION
				SELECT
					[c_4].[ParentID]
				FROM
					[Parent] [c_4]
			) [t1]
	) [t2]

