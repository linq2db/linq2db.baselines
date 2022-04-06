BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:46:58.3580357 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 16:46:58.3580491 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

