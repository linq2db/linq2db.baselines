BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [c_1]
		WHERE
			[c_1].[Value1] IS NULL
	), 1, 0)

