BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Today DateTime2
SET     @Today = '2022-04-01T00:00:00.0000000'
DECLARE @p_1 DateTime2
SET     @p_1 = '2023-04-01T00:00:00.0000000'

SELECT
	DATEDIFF(Month, @Today, @p_1)

