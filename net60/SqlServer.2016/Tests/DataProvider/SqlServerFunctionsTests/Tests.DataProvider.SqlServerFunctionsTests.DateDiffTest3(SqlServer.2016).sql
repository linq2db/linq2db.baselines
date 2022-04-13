BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:15:38.2969692 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:15:38.2969773 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

