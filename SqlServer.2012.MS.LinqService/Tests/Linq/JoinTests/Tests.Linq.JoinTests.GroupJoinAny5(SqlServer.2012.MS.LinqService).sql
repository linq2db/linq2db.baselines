BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	), 1, 0)
FROM
	[Parent] [t1]

