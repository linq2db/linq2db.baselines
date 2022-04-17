BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 02:46:22.7793793 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

