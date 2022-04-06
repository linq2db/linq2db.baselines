BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Today DateTime2
SET     @Today = '2022-04-06T00:00:00.0000000'

SELECT
	DATEADD(Day, 1, @Today)

