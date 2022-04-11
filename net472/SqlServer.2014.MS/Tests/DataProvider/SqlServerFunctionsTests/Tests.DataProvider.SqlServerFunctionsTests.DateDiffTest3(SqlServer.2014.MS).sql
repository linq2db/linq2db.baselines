BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:53:21.4980566 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 03:53:21.4980566 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

