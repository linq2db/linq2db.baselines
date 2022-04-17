BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:07:04.8334313 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

