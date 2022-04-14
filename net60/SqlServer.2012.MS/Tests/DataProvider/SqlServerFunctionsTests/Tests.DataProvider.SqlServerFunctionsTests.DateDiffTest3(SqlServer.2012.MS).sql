BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:19:20.5521681 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:19:20.5521749 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

