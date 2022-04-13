BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:21:56.4079305 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:21:56.4079369 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

