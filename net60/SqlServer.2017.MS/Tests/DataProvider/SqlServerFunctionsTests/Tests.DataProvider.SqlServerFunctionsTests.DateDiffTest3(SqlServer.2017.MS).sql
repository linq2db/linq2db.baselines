BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 06:44:10.3388159 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 06:44:10.3388229 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

