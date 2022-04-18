BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:46:01.0045658 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 07:46:01.0045658 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

