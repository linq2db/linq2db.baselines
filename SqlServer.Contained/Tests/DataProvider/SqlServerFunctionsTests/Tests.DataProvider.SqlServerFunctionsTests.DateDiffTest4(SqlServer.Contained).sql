BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p Time
SET     @p = TIMEFROMPARTS(2, 0, 0, 0, 7)
DECLARE @p_1 Time
SET     @p_1 = TIMEFROMPARTS(3, 0, 0, 0, 7)

SELECT
	DATEDIFF(Hour, @p, @p_1)

