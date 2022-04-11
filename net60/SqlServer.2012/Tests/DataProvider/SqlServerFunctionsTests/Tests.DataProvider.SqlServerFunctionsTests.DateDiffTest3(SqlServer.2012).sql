BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:12:17.2432413 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:12:17.2432490 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

