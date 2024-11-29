BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	IIF(NOT EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= 3
	), 1, 0)

