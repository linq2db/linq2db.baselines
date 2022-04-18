BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:50:35.3604284 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 07:50:35.3604284 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

