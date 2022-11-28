BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)

SELECT
	DATEADD(Year, 1, @DateTimeOffset)

