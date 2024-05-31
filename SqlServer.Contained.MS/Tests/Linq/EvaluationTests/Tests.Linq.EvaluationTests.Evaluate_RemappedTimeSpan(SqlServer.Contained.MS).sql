BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Zero BigInt -- Int64
SET     @Zero = 0
DECLARE @p BigInt -- Int64
SET     @p = 88888888

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			@Zero > CAST(Floor(5.988 * @p) AS BigInt)
	), 1, 0)

