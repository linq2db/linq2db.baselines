BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 14:46:35.5169101 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 14:46:35.5169148 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

