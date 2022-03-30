BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Today DateTime2
SET     @Today = '2022-03-30T00:00:00.0000000'
DECLARE @p_1 DateTime2
SET     @p_1 = '2023-03-30T00:00:00.0000000'

SELECT
	DATEDIFF(Month, @Today, @p_1)

