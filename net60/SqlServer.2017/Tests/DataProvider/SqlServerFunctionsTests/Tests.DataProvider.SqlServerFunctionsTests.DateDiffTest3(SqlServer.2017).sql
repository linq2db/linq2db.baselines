BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:23:16.1716035 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:23:16.1716092 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

