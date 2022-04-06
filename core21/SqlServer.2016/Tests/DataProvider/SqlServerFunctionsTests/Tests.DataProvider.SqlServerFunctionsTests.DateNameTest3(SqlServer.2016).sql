BeforeExecute
-- SqlServer.2016
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2022-03-22 00:00:00.0000000 +00:00'

SELECT
	DATENAME(Month, @p_1)

