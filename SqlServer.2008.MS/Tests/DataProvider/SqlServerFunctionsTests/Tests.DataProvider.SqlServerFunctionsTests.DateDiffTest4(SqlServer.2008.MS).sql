BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Time
SET     @p = CAST('02:00:00.0000000' AS TIME)
DECLARE @p_1 Time
SET     @p_1 = CAST('03:00:00.0000000' AS TIME)

SELECT
	DATEDIFF(Hour, @p, @p_1)

