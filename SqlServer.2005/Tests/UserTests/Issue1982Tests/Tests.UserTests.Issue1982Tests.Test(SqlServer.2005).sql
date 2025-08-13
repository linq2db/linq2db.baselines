BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Issue1982Table] [t1]
			WHERE
				[t1].[Time] < [t1].[DateTime]
		)
			THEN 1
		ELSE 0
	END

