BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Substring(N'123', 2, @p)

