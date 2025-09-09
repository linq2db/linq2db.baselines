BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Substring(N'123', 2, @p)

