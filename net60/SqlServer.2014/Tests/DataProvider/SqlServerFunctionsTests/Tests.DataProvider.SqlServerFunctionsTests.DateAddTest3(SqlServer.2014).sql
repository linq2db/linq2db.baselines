BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:19:32.7057230 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

