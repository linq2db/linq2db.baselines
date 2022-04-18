BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:13:14.9348696 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:13:14.9348765 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

