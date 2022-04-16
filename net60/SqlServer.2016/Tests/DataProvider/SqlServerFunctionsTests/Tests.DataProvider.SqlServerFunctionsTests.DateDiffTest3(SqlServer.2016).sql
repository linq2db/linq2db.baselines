BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:19:35.5854194 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 22:19:35.5854272 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

