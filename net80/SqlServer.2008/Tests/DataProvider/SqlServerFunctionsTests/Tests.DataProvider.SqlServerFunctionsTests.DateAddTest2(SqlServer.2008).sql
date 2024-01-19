BeforeExecute
-- SqlServer.2008
DECLARE @Date DateTime2
SET     @Date = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	DATEADD(Day, 1, @Date)

