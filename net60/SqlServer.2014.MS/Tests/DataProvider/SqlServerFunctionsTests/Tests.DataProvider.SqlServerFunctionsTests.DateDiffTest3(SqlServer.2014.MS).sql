BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:29:02.5856185 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:29:02.5856254 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

