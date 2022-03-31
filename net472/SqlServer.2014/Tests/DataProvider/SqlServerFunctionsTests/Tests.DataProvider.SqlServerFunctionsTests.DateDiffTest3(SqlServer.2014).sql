BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:13:48.0771774 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 02:13:48.0771774 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

