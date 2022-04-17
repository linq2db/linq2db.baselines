BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:54:54.8879543 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 23:54:54.8879655 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

