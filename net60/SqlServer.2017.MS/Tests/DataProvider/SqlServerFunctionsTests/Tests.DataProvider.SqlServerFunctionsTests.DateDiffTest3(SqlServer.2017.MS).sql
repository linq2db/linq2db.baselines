BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:22:38.8897977 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:22:38.8898030 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

