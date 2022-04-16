BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Today DateTime2
SET     @Today = '2022-04-16T00:00:00.0000000'

SELECT
	DATEADD(Day, 1, @Today)

