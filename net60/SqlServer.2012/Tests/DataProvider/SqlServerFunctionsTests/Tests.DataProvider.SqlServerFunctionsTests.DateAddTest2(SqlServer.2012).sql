BeforeExecute
-- SqlServer.2012
DECLARE @Date_1 DateTime2
SET     @Date_1 = '2020-02-29T00:00:00.0000000'

SELECT
	DATEADD(Day, 1, @Date_1)

