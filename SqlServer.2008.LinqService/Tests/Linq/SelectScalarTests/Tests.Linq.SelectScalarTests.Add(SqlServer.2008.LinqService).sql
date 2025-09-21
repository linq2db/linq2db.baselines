BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	LEN(Substring(N'123', 2, 2) + N'.') + CAST(2 AS NVarChar(11))

