BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 14:48:08.1527185 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 14:48:08.1527255 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

