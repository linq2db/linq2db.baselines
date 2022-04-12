BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 12:25:06.6078620 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 12:25:06.6078690 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

