BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:39:53.2401766 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:39:53.2401843 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

