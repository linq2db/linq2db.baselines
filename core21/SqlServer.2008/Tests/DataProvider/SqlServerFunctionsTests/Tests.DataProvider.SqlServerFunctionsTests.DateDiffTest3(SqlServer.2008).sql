BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 06:45:33.0152912 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 06:45:33.0152998 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

