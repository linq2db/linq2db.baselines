BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:38:11.6048744 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:38:11.6048826 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

