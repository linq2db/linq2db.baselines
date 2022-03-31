BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:56:21.5640708 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

