BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:19:42.4264843 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:19:42.4264905 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

