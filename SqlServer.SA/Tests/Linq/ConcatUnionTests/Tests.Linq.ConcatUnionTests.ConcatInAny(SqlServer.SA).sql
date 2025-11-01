-- SqlServer.SA SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		UNION ALL
		SELECT
			[p_1].[ParentID]
		FROM
			[Parent] [p_1]
	), 1, 0)

