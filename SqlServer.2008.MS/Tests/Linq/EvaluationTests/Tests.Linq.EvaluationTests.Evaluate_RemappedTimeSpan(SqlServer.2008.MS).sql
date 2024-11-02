BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Zero BigInt -- Int64
SET     @Zero = 0
DECLARE @p BigInt -- Int64
SET     @p = 532266661

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [p]
			WHERE
				@Zero > @p
		)
			THEN 1
		ELSE 0
	END

