BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2022, 2, 22, 0, 0, 0, 0, 7)

SELECT
	YEAR(@p_1)

