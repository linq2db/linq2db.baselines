BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)
DECLARE @p_1 DateTimeOffset
SET     @p_1 = DATETIMEOFFSETFROMPARTS(2021, 2, 28, 17, 54, 55, 1231234, 0, 40, 7)

SELECT
	DATEDIFF(Month, @DateTimeOffset, @p_1)

