BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:10:52.3901823 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 02:10:52.3901823 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

