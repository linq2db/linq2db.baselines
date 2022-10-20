BeforeExecute
-- SqlServer.2022
DECLARE @p_1 Time
SET     @p_1 = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATEPART(Hour, @p_1)

