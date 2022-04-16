BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:12:24.6277149 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 21:12:24.6277196 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

