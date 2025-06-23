BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CStr([t].[Id]) + CStr([t].[Value]) = CStr([t].[Id]) + CStr([t].[Value])

