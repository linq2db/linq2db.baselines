-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			CAST(0 AS BIGINT) > CAST(Floor(5.988 * CAST(88888888 AS BIGINT)) AS BigInt)
	), 1, 0)

