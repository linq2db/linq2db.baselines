BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:18:14.4590737 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:18:14.4590737 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

