BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:48:59.3555596 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 01:48:59.3555663 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

