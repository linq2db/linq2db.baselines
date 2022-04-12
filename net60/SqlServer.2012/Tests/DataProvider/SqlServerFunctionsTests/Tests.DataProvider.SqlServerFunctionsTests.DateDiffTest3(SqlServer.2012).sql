BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:08:29.2105992 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:08:29.2106071 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

