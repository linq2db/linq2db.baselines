BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:40:26.6493792 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 03:40:26.6493863 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

