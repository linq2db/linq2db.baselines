BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 18:27:42.7657376 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

