BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:36:13.1580118 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 16:36:13.1590159 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

