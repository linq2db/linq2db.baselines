BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 07:00:59.8975200 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

