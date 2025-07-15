BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	CStr([c_1].[Id]),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CStr([o].[Id]),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CStr([p].[Id]),
	[p].[Name]
FROM
	[Issue4654Product] [p]

