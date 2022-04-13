BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:18:56.1695343 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:18:56.1695408 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

