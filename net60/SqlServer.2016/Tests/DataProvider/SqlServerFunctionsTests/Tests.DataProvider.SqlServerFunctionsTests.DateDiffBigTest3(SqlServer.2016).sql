BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:19:19.7204342 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:19:19.7204414 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

