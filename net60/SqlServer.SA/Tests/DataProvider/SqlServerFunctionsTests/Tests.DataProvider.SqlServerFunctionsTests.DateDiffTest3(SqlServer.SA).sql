BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:21:56.4060964 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:21:56.4061063 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

