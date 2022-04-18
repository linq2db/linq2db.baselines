BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 16:14:13.4906424 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 16:14:13.4906553 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

