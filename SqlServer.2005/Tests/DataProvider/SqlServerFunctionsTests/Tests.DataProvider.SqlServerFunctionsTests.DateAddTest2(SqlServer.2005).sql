BeforeExecute
-- SqlServer.2005
DECLARE @Date DateTime
SET     @Date = CAST('2020-02-29T00:00:00.000' AS DATETIME)

SELECT
	DATEADD(Day, 1, @Date)

