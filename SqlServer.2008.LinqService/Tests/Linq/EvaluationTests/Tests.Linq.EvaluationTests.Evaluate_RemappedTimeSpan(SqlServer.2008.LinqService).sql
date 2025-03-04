BeforeExecute
-- SqlServer.2008
DECLARE @value BigInt -- Int64
SET     @value = 0

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [p]
			WHERE
				@value > 532266661
		)
			THEN 1
		ELSE 0
	END

