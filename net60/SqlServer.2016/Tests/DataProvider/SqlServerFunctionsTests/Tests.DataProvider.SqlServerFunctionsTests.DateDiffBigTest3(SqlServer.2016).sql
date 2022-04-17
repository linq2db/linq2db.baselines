BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:24:02.4419639 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 04:24:02.4419697 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

