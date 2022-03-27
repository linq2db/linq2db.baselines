BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:43:18.0711035 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 18:43:18.0711035 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

