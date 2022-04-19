BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:12:19.9873736 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

