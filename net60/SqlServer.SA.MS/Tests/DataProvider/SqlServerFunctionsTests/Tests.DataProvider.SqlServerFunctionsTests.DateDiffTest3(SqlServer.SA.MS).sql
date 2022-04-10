BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:44:39.6892646 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:44:39.6892714 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

