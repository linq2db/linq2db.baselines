BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p_1 DateTimeOffset
SET     @p_1 = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	TODATETIMEOFFSET(@p_1, N'-04:00')

