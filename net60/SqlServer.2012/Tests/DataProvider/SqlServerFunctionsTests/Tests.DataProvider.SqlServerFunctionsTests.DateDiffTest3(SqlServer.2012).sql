BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:09:06.3891086 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:09:06.3891170 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

