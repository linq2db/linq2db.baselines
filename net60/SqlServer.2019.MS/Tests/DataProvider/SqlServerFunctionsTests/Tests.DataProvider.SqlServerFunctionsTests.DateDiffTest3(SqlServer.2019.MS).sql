BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:37:15.8654385 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:37:15.8654432 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

