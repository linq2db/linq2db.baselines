BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:18:42.0817365 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 17:18:42.0817441 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

