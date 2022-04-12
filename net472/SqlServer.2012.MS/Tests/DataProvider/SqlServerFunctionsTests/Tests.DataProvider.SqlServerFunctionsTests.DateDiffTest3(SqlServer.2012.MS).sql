BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:16:43.4297302 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:16:43.4297302 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

