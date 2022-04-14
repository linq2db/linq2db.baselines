BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:09:41.1984553 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:09:41.1984608 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

