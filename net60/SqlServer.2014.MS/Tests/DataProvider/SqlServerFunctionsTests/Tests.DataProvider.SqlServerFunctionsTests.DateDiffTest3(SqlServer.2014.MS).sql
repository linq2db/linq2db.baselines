BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:23:48.3567262 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 03:23:48.3567317 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

