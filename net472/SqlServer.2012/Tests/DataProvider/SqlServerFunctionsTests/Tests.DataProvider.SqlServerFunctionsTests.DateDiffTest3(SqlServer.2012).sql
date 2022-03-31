BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:56:21.8841766 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 08:56:21.8841766 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

