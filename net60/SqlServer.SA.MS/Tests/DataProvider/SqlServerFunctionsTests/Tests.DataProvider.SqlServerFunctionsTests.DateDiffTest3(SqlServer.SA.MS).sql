BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:59:02.4544444 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 07:59:02.4544509 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

