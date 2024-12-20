BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [p]
			WHERE
				CAST(0 AS BIGINT) > 532266661
		)
			THEN 1
		ELSE 0
	END

