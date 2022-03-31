BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:19:42.9195841 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 02:19:42.9195841 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

