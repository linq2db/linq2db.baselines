BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:39:27.8719651 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 07:39:27.8719740 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

