BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:00:14.6690608 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:00:14.6690678 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

