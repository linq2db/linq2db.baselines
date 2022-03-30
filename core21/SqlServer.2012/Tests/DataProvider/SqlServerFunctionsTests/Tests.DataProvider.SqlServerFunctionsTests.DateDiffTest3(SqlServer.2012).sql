BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 00:53:37.0369174 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-30 00:53:37.0369218 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

