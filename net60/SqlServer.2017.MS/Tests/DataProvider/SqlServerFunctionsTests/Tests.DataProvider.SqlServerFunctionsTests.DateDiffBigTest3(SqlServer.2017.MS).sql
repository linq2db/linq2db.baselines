BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:39:16.1981857 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 15:39:16.1981942 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

