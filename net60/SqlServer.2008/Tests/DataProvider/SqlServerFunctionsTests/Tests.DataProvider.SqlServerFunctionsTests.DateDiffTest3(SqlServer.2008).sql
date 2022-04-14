BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:36:59.6640284 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 21:36:59.6640340 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

