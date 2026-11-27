-- SqlServer.2019.MS SqlServer.2019
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[TimeOfDayTable] [t1]
		WHERE
			[t1].[Time] < CAST([t1].[DateTime] AS Time)
	), 1, 0)

