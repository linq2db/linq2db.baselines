BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:29:12.1200427 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 15:29:12.1200508 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

