BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:22:43.2693666 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:22:43.2693736 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

