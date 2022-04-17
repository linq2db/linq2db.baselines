BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:46:42.2085315 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 23:46:42.2085315 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

