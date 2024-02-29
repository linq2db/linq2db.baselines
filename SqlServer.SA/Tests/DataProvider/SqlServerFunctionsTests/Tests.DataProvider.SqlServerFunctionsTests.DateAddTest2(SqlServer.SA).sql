BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)

SELECT
	DATEADD(Day, 1, @Date)

