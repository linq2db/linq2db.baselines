BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:27:07.4303631 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:27:07.4303631 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

