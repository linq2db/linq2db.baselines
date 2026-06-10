-- SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [p]
			WHERE
				CAST(0 AS BIGINT) > CAST(Floor(5.988 * CAST(88888888 AS BIGINT)) AS BigInt)
		)
			THEN 1
		ELSE 0
	END

