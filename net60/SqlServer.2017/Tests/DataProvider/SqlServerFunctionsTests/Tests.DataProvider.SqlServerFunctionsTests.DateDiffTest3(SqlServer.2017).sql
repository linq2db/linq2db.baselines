BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:36:37.6096233 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:36:37.6096301 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

