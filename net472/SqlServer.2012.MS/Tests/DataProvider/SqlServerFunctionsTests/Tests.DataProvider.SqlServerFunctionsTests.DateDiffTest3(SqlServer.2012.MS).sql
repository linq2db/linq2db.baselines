BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:54:01.4242267 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:54:01.4242267 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

