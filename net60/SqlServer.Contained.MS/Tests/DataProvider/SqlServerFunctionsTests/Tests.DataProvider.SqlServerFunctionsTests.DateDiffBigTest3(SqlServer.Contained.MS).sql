BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:59:02.4146171 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 07:59:02.4146242 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

