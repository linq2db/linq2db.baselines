BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:50:02.5726836 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:50:02.5726918 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

