BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:45:10.9560325 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 01:45:10.9560397 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

