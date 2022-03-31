BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:35:52.0321847 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

