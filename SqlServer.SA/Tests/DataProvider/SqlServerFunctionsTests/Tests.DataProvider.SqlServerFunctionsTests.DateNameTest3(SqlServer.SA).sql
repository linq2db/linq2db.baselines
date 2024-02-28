BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2022, 3, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	DATENAME(Month, @p)

