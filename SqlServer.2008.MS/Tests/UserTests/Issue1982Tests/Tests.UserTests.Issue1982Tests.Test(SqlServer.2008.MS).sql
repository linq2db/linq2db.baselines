-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Issue1982Table] [t1]
			WHERE
				[t1].[Time] < CAST([t1].[DateTime] AS Time)
		)
			THEN 1
		ELSE 0
	END

