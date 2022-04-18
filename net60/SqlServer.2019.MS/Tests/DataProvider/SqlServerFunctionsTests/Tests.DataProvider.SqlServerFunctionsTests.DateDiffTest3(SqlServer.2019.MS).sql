BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:19:41.6760895 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:19:41.6760959 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

