BeforeExecute
-- SqlServer.2005
DECLARE @Date DateTime
SET     @Date = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @p DateTime
SET     @p = CAST('2021-02-28T00:00:00.000' AS DATETIME)

SELECT
	DATEDIFF(Month, @Date, @p)

