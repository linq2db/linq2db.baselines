BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*) > 0
FROM
	[Person] [_]
WHERE
	([_].[FirstName] = [_].[FirstName]) = Iif([_].[MiddleName] <> [_].[LastName], True, False)

