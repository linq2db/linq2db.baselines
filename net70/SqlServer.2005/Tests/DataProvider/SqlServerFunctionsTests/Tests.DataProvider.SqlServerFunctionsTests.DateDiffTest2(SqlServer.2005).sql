BeforeExecute
-- SqlServer.2005
DECLARE @Date_1 DateTime
SET     @Date_1 = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @p_1 DateTime
SET     @p_1 = CAST('2021-02-28T00:00:00.000' AS DATETIME)

SELECT
	DATEDIFF(Month, @Date_1, @p_1)

