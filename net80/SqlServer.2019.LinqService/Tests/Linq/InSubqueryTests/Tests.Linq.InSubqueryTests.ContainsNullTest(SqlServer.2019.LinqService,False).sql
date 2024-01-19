BeforeExecute
-- SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			[c_1].[Value1]
		FROM
			[Parent] [c_1]
		WHERE
			[c_1].[Value1] IS NULL
	), 1, 0)

