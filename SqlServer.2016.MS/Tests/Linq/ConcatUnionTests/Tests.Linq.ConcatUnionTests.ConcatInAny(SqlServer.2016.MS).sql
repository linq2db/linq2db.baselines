BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

