BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:08:54.9974505 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

