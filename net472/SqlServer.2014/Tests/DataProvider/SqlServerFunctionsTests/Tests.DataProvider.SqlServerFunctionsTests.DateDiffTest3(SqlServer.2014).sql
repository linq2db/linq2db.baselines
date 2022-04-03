BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:26:48.7639936 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 04:26:48.7639936 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

