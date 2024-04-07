BeforeExecute
-- SqlServer.2014
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2022, 2, 22, 0, 0, 0, 0, 7)

SELECT
	YEAR(@p)

