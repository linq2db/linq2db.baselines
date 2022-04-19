BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:12:20.0413463 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:12:20.0413594 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

