BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:05:06.6401905 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-30 01:05:06.6401997 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

