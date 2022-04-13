BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:38:51.3384342 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:38:51.3384438 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

