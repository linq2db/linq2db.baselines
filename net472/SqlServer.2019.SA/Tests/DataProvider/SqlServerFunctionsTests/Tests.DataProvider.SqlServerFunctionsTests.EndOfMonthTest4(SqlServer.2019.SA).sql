BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @p_1 DateTime2
SET     @p_1 = '2022-02-22T00:00:00.0000000'

SELECT
	EOMONTH(@p_1, 1)

