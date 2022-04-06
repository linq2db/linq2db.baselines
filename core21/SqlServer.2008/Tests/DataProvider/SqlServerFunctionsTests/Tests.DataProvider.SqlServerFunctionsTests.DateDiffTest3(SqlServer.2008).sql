BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:12:02.2794204 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 17:12:02.2794285 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

