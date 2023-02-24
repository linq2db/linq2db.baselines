BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p_1 DateTimeOffset
SET     @p_1 = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	DAY(@p_1)

