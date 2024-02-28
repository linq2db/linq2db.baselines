BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2021, 2, 28, 17, 54, 55, 1231234, 0, 40, 7)

SELECT
	DATEDIFF(Month, @DateTimeOffset, @p)

