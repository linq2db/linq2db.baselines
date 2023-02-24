BeforeExecute
-- SqlServer.2012
DECLARE @Date_1 DateTime2
SET     @Date_1 = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2021, 2, 28, 0, 0, 0, 0, 7)

SELECT
	DATEDIFF(Month, @Date_1, @p_1)

