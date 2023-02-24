BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p_1 Time
SET     @p_1 = TIMEFROMPARTS(2, 0, 0, 0, 7)
DECLARE @p_2 Time
SET     @p_2 = TIMEFROMPARTS(3, 0, 0, 0, 7)

SELECT
	DATEDIFF(Hour, @p_1, @p_2)

