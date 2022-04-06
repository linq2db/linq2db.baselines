BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:44:18.8801219 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 16:44:18.8801219 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

