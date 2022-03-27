BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:11:57.8877027 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 19:11:57.8877077 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

