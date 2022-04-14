BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:45:57.4075090 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 01:45:57.4075149 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

