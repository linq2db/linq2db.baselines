BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 12:25:06.5570420 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 12:25:06.5570478 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

