BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:12:24.5809078 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 21:12:24.5809574 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

