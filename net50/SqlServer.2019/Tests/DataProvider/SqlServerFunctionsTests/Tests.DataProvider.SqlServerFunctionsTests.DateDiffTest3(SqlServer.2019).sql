BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:36:17.5022223 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 04:36:17.5022293 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

