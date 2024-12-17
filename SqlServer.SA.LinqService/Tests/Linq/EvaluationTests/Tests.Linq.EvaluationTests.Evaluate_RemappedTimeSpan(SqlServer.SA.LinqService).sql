BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			CAST(0 AS BIGINT) > 532266661
	), 1, 0)

