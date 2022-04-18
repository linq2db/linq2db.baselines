BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:52:17.8482944 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 15:52:17.8483082 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

