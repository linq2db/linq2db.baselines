BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:20:42.3260677 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 01:20:42.3260733 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

