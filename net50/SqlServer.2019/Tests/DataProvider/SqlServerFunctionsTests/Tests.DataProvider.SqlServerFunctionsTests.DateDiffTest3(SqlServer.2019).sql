BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:31:42.5869264 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 19:31:42.5869340 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

