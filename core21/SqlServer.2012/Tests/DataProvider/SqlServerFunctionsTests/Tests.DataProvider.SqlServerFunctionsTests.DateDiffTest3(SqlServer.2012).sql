BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:31:24.1282770 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:31:24.1282833 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

