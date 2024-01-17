BeforeExecute
-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = NULL

SELECT
	ISNULL(@p, 10)

