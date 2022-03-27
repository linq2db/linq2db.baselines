BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 07:01:04.7254489 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 07:01:04.7254541 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

