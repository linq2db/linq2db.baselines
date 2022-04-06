BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:08:01.7887114 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 17:08:01.7887191 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

