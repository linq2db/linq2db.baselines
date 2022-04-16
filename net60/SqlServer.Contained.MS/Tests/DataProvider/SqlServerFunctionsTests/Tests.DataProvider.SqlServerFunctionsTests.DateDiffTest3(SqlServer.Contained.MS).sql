BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:44:20.2564491 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 15:44:20.2564554 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

