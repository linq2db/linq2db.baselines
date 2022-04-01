BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:54:35.4260032 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:54:35.4260098 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

