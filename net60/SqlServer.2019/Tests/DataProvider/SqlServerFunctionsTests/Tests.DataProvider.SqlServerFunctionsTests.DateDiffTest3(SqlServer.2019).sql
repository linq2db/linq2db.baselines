BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:55:06.3128291 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 07:55:06.3128380 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

