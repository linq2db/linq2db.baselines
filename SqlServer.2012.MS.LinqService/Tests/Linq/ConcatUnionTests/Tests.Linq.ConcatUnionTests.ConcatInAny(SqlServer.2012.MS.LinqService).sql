BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

