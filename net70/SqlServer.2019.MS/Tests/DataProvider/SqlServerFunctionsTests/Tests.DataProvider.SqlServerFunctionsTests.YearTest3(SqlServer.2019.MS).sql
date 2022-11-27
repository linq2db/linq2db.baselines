BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p_1 DateTimeOffset
SET     @p_1 = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	YEAR(@p_1)

