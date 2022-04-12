BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:56:33.0267308 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:56:33.0267403 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

