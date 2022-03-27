BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:38:45.3726010 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

