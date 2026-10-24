-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Time
SET     @p = CAST('02:00:00.0000000' AS TIME)

SELECT
	DATEPART(Hour, @p)

