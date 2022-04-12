BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:05:40.8042353 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:05:40.8042454 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

