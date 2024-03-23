BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [c_1]
		WHERE
			[c_1].[Value1] IS NULL
	), 1, 0)

