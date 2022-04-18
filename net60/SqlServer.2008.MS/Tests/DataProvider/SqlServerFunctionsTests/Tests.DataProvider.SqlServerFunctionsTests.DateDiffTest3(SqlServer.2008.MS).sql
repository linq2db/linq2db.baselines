BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:08:28.2631333 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:08:28.2631469 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

