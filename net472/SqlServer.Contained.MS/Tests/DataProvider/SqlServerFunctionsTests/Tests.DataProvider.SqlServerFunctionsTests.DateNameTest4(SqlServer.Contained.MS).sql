BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p_1 Time
SET     @p_1 = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATENAME(Hour, @p_1)

