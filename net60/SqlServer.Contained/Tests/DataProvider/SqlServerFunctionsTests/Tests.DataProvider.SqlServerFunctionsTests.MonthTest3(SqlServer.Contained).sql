BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	MONTH(@p)

