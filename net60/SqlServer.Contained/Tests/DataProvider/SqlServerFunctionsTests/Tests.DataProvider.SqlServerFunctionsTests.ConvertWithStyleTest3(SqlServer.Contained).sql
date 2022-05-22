BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2022, 2, 22, 0, 0, 0, 0, 7)

SELECT
	CONVERT(nvarchar(10), @p_1, 105)

