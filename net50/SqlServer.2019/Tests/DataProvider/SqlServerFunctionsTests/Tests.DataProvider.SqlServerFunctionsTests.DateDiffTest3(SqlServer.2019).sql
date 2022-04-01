BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:35:33.9520870 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:35:33.9520930 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

