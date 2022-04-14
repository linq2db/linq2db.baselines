BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:49:06.0864462 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

