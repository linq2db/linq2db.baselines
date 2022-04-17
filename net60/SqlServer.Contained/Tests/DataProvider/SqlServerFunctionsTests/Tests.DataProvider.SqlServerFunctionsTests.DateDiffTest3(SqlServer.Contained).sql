BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:30:23.5795066 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 01:30:23.5795154 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

