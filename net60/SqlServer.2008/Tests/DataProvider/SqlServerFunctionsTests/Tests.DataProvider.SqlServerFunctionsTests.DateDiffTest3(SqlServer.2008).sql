BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:10:22.3360095 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:10:22.3360189 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

