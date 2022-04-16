BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 14:46:35.5455912 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 14:46:35.5455959 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

