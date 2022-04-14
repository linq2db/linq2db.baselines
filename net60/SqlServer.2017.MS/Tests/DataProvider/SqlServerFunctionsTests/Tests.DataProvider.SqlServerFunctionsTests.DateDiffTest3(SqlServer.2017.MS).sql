BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 22:10:44.5109627 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 22:10:44.5109683 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

