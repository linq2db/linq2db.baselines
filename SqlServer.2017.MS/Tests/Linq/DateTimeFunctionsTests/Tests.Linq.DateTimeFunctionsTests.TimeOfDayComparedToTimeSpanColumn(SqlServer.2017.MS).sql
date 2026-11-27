-- SqlServer.2017.MS SqlServer.2017
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[TimeOfDayTable] [t1]
		WHERE
			[t1].[Time] < CAST([t1].[DateTime] AS Time)
	), 1, 0)

