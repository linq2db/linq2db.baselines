BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 06:47:07.2305386 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 06:47:07.2305436 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

