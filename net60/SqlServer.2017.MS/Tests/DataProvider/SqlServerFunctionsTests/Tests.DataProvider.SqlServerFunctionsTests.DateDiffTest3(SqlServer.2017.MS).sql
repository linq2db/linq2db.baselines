BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:55:20.3729753 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:55:20.3729812 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

