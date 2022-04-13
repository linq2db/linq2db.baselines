BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:04:25.6576896 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:04:25.6577030 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

