BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

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

