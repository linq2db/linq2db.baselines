BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:49:27.3912126 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 15:49:27.3912185 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

