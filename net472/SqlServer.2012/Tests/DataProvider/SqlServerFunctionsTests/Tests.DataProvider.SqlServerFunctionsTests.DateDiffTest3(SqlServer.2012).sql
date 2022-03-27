BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 07:00:59.9574889 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 07:00:59.9574889 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

