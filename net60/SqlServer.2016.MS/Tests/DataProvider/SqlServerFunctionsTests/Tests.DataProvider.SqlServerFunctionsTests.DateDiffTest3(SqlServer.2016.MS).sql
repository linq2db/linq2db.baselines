BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:45:10.9573638 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 01:45:10.9573691 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

