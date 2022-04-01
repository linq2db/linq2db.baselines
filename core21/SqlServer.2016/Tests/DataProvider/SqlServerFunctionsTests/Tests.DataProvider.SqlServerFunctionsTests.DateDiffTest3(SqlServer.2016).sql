BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:33:14.4367729 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:33:14.4367802 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

