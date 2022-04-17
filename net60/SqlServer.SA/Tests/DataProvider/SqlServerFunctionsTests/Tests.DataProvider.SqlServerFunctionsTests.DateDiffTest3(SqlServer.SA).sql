BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:22:18.5040825 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 00:22:18.5040880 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

