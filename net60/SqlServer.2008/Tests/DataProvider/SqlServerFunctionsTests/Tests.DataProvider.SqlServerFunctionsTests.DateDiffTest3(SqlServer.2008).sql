BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:28:43.4687812 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 07:28:43.4687878 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

