BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:44:14.5898827 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 02:44:14.5898922 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

