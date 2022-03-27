BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 07:24:38.5618311 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 07:24:38.5618366 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

