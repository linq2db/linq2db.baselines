BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:13:28.6848808 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:13:28.6848808 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

