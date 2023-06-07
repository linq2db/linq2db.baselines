BeforeExecute
-- SqlServer.2005
DECLARE @p DateTime
SET     @p = CAST('2022-03-22T00:00:00.000' AS DATETIME)

SELECT
	DATENAME(Month, @p)

