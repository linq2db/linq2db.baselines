BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:18:42.1012861 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 17:18:42.1012934 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

