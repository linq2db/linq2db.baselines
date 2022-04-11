BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:50:02.2574633 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 03:50:02.2574700 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

