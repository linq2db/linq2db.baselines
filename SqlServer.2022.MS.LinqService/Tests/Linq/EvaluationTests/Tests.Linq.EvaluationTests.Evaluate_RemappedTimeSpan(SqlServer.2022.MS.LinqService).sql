BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @value BigInt -- Int64
SET     @value = 0

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			@value > 532266661
	), 1, 0)

