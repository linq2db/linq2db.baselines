BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:42:25.5729196 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 18:42:25.5729196 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

