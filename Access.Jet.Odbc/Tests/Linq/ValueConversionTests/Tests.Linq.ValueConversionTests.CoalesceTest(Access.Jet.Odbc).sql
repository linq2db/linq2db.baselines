BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([t1].[EnumNullable] IS NULL, [t1].[Enum], [t1].[EnumNullable])
FROM
	[ValueConversion] [t1]

