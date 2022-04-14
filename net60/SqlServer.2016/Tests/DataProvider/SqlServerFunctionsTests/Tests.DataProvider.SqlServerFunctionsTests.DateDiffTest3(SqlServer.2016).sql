BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:39:17.4372306 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 03:39:17.4372374 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

