BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:23:05.5526104 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 02:23:05.5526237 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

