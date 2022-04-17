BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:45:52.1992123 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 04:45:52.1992242 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

