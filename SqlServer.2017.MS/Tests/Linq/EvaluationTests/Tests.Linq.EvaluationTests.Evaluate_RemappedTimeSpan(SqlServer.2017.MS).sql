BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Zero BigInt -- Int64
SET     @Zero = 0
DECLARE @p BigInt -- Int64
SET     @p = 532266661

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Person] [p]
		WHERE
			@Zero > @p
	), 1, 0)

