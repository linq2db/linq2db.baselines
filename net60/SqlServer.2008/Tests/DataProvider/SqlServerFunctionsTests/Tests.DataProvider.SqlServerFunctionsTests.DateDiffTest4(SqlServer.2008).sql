BeforeExecute
-- SqlServer.2008
DECLARE @p_1 Time
SET     @p_1 = CAST('02:00:00.0000000' AS TIME)
DECLARE @p_2 Time
SET     @p_2 = CAST('03:00:00.0000000' AS TIME)

SELECT
	DATEDIFF(Hour, @p_1, @p_2)

