-- SqlServer.2005.MS SqlServer.2005
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[TimeOfDayTable] [t1]
			WHERE
				[t1].[Time] < [t1].[DateTime]
		)
			THEN 1
		ELSE 0
	END

