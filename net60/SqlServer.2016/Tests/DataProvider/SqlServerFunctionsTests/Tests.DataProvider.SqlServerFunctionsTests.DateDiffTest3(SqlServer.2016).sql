BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:40:00.8042765 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:40:00.8042883 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

