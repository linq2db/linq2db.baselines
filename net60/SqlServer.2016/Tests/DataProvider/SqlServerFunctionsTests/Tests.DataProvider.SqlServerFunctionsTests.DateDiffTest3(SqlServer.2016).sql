BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:48:24.0935000 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 21:48:24.0935070 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

