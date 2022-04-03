BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:11:35.5375739 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

