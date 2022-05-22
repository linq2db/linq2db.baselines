BeforeExecute
-- SqlServer.2008
DECLARE @p_1 Time
SET     @p_1 = CAST('02:00:00.0000000' AS TIME)

SELECT
	DATEADD(Hour, 1, @p_1)

