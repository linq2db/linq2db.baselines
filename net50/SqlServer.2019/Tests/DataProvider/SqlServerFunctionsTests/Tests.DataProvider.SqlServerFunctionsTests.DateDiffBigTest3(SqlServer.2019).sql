BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:09:08.3401628 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 19:09:08.3401825 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

