BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:43:03.1752036 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 08:43:03.1752104 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

