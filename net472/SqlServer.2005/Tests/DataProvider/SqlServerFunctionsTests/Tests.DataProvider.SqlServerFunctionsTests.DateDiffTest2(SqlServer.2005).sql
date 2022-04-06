BeforeExecute
-- SqlServer.2005
DECLARE @Today DateTime
SET     @Today = '2022-04-06T00:00:00'
DECLARE @p_1 DateTime
SET     @p_1 = '2023-04-06T00:00:00'

SELECT
	DATEDIFF(Month, @Today, @p_1)

