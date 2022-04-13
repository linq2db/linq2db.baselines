BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:31:22.7608807 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:31:22.7608901 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

