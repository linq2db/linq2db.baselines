BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:45:00.9695124 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 15:45:00.9695199 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

