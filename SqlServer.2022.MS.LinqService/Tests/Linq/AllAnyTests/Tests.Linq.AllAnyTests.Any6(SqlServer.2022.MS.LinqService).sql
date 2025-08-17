BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] > 3
	), 1, 0)

