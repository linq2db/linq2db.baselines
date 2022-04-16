BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:08:55.0795512 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 22:08:55.0800400 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

