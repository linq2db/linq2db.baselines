BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:18:42.8856666 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:18:42.8859821 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

