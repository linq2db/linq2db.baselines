BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p_1 DateTimeOffset
SET     @p_1 = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	MONTH(@p_1)

