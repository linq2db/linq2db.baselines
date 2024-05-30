BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)

SELECT
	DATEADD(Day, 1, @Date)

