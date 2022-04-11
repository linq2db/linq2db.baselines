BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 08:17:02.3081152 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 08:17:02.3081200 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

