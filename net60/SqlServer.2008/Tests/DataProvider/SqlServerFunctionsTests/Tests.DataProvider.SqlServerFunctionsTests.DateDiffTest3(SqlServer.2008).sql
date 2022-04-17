BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:24:31.3863123 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 04:24:31.3863223 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

