BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:05:15.7576836 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:05:15.7576896 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

