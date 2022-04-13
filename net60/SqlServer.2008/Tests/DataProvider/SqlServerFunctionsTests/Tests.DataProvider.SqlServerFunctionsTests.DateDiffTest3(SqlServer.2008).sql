BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:13:19.6891767 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 15:13:19.6891850 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

