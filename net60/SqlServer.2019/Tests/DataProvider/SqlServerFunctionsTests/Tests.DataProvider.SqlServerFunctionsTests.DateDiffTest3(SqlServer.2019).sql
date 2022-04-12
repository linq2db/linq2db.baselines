BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:52:51.5323384 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:52:51.5323524 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

