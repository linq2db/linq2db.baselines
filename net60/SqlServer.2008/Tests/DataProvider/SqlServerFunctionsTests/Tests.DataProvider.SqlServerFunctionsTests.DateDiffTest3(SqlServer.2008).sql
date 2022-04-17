BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:50:09.4142077 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:50:09.4142185 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

