BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:28:43.4339835 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

