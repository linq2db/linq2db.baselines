BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:17:00.4386163 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 04:17:00.4386214 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

