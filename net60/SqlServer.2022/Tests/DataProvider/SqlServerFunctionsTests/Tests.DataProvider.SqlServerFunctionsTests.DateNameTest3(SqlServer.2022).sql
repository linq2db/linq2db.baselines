BeforeExecute
-- SqlServer.2022
DECLARE @p_1 DateTimeOffset
SET     @p_1 = DATETIMEOFFSETFROMPARTS(2022, 3, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	DATENAME(Month, @p_1)

