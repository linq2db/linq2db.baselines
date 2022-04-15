BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:08:18.9641388 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:08:18.9641388 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

