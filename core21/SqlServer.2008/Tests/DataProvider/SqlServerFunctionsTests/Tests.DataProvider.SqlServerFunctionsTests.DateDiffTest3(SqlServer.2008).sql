BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:26:18.3978982 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:26:18.3979041 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

