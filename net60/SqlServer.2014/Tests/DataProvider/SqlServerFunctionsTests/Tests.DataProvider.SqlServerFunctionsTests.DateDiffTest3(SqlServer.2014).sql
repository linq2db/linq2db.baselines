BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:39:31.7846869 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 23:39:31.7846975 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

