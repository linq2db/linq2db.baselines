-- SqlServer.2022.MS SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT TOP (1)
			[item_1].[Value]
		FROM
			[TakeSkipClass] [item_1]
		GROUP BY
			[item_1].[Value]
		HAVING
			COUNT(*) > 1
	), 1, 0)

