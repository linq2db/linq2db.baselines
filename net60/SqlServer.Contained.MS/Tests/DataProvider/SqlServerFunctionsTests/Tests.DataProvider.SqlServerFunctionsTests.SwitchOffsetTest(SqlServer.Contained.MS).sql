BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p_1 DateTimeOffset
SET     @p_1 = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	SWITCHOFFSET(@p_1, N'-04:00')

