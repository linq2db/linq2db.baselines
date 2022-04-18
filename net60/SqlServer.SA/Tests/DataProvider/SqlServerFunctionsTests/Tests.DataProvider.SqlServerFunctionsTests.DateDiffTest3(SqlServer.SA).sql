BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:57:46.4991266 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:57:46.4991314 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

