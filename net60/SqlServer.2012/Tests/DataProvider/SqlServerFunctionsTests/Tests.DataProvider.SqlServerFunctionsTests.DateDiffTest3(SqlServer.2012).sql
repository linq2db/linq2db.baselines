BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 02:46:22.9545636 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 02:46:22.9545764 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

