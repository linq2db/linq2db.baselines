BeforeExecute
-- SqlServer.2014
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-02-29 17:54:55.1231234 +00:40'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2021-02-28 17:54:55.1231234 +00:40'

SELECT
	DATEDIFF(Month, @DateTimeOffset, @p_1)

