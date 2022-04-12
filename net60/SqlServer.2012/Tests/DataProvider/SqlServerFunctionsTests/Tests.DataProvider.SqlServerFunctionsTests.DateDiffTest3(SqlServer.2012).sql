BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:23:22.4179712 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:23:22.4179782 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

