BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:42:09.0231062 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 21:42:09.0231164 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

