BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Date_1 DateTime2
SET     @Date_1 = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)

SELECT
	DATEADD(Day, 1, @Date_1)

