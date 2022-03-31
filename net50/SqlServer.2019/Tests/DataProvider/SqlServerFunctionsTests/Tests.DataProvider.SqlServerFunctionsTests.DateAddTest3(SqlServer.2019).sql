BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 09:28:22.3975624 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

