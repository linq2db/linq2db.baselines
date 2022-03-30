BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:12:15.3267009 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-30 01:12:15.3267009 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

