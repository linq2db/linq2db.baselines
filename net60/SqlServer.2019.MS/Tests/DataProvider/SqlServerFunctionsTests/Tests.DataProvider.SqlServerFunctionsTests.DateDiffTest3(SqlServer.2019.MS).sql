BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:18:55.7673940 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:18:55.7674009 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

