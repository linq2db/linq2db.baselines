BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:47:44.6521151 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

