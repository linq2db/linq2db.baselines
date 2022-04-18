BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:56:27.5005140 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 15:56:27.5005233 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

