BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:33:33.9679966 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:33:33.9680061 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

