BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(NULL IN (
		SELECT
			[c_1].[Value1]
		FROM
			[Parent] [c_1]
	), 1, 0)

