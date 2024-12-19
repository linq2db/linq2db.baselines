BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Doctor DROP CONSTRAINT PersonDoctor

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Patient DROP CONSTRAINT PersonPatient

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Person ALTER COLUMN PersonID COUNTER(5, 1)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Doctor ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Patient ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
