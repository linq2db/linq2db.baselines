BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:09:41.2008886 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:09:41.2008959 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

