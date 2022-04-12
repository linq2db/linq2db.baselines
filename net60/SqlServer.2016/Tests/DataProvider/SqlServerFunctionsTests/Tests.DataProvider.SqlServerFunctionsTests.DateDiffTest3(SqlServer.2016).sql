BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:19:19.7571007 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:19:19.7571096 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

