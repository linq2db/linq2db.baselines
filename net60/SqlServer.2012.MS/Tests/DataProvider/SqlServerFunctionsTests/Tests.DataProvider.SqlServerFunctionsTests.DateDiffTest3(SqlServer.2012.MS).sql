BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:42:06.6795034 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:42:06.6795321 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

