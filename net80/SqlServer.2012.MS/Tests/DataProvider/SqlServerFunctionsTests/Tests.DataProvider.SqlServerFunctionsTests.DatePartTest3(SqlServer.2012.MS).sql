BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	DATEPART(Month, @p)

