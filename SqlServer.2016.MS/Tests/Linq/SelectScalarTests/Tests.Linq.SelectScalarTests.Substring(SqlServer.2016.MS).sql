BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Substring(N'123', 2, @p)

