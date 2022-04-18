BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 16:02:47.1195263 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 16:02:47.1195386 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

