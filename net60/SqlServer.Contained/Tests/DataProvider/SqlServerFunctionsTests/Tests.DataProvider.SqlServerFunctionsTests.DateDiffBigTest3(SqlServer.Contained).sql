BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:37:15.8325342 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:37:15.8325412 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

