BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:09:08.9628749 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:09:08.9628813 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

