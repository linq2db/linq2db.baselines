BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 02:44:29.5246159 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 02:44:29.5246214 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

