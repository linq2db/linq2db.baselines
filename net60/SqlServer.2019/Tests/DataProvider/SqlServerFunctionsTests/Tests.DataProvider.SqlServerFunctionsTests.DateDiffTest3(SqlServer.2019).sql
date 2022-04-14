BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:13:04.2951699 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:13:04.2951837 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

