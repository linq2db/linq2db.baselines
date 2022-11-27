BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p_1 Time
SET     @p_1 = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATENAME(Hour, @p_1)

