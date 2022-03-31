BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:10:52.3579081 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

