BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 13:11:26.0852751 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 13:11:26.0852799 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

