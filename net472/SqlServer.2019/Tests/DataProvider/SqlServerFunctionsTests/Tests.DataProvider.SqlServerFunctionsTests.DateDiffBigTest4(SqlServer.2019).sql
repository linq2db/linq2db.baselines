BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p_1 Time
SET     @p_1 = '02:00:00'
DECLARE @p_2 Time
SET     @p_2 = '03:00:00'

SELECT
	DATEDIFF_BIG(Hour, @p_1, @p_2)

