BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:30:21.8059065 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:30:21.8059121 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

