BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF(NULL IN (
		SELECT
			[c_1].[Value1]
		FROM
			[Parent] [c_1]
	), 1, 0)

