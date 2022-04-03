BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:11:35.5920351 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 04:11:35.5920433 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

