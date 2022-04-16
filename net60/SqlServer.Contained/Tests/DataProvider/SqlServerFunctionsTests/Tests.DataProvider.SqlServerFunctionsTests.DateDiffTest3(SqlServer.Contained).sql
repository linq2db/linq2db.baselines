BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:52:00.9344484 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 22:52:00.9344539 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

