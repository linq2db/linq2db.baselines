BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:33:34.0351390 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:33:34.0351509 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

