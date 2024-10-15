BeforeExecute
-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Substring(N'123', 2, @p)

