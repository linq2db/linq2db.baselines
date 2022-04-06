BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 18:39:25.5772747 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 18:39:25.5772747 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

