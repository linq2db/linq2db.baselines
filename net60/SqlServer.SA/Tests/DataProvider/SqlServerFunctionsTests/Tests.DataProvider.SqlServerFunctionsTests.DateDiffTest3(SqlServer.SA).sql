BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:07:04.9258153 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:07:04.9258228 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

