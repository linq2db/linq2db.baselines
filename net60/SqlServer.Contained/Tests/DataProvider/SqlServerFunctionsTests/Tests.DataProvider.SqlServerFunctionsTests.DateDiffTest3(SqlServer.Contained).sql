BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 22:10:42.4234184 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 22:10:42.4234231 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

