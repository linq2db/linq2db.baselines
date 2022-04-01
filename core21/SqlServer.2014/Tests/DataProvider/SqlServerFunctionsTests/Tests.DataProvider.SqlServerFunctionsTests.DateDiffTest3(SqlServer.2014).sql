BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:35:25.4242955 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:35:25.4243036 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

