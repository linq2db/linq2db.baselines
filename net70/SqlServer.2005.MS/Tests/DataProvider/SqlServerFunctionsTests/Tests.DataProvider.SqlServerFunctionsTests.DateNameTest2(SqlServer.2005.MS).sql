BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p_1 DateTime
SET     @p_1 = CAST('2022-03-22T00:00:00.000' AS DATETIME)

SELECT
	DATENAME(Month, @p_1)

