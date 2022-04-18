BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:17:30.7872408 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

