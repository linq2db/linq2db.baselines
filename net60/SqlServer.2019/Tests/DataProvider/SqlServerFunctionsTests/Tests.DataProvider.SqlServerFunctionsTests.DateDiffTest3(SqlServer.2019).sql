BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 13:24:32.0943831 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 13:24:32.0943875 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

