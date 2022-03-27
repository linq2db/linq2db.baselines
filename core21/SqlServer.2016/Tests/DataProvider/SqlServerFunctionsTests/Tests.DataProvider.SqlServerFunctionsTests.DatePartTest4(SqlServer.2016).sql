BeforeExecute
-- SqlServer.2016
DECLARE @p_1 Time
SET     @p_1 = '02:00:00'

SELECT
	DATEPART(Hour, @p_1)

