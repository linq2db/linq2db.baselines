BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:07:22.2745928 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

