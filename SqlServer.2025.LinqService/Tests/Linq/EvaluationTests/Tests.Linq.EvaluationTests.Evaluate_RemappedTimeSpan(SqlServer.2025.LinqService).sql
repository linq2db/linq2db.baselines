BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			CAST(0 AS BIGINT) > 532266661
	), 1, 0)

