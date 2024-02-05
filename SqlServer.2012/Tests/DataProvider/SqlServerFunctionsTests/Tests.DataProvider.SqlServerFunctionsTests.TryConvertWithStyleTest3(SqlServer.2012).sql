BeforeExecute
-- SqlServer.2012
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2022, 2, 22, 0, 0, 0, 0, 7)

SELECT
	TRY_CONVERT(nvarchar(10), @p, 105)

