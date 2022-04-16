BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:12:24.5246171 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

