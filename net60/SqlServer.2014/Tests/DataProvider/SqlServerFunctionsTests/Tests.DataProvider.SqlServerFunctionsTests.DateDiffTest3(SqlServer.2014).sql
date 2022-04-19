BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:29:14.5747872 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:29:14.5748300 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

