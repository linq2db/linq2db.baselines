BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:25:22.6974718 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 15:25:22.6974796 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

