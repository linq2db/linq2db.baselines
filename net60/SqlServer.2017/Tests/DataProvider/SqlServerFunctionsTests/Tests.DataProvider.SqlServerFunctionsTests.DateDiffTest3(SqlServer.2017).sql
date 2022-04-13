BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:38:51.3643677 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:38:51.3643742 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

