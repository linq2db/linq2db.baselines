BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:47:44.6472113 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

