BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 09:28:22.4181906 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 09:28:22.4181984 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

