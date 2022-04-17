BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:19:32.7428335 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 01:19:32.7428399 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

