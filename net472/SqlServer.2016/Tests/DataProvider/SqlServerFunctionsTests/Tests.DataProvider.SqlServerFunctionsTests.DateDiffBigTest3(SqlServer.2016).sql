BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:50:40.8661890 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 18:50:40.8661890 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

