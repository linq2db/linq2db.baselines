BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:47:02.9945261 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:47:02.9945377 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

