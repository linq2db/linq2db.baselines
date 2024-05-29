BeforeExecute
-- SqlServer.2022
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2022, 3, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	DATENAME(Month, @p)

