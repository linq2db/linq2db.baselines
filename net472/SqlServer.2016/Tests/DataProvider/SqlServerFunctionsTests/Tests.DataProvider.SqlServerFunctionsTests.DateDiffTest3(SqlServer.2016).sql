BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:32:34.7008646 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 04:32:34.7008646 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

