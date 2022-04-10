BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:19:42.4249303 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:19:42.4249384 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

