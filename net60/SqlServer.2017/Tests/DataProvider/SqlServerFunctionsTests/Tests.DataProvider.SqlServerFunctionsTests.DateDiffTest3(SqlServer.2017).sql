BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 14:46:35.5438449 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 14:46:35.5438495 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

