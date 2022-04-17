BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:16:06.1003080 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 22:16:06.1003153 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

