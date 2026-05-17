-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[InheritanceParent] [t1]

-- Access.Jet.Odbc AccessODBC

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.Jet.Odbc AccessODBC

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[Name],
	[TypeDiscriminator]
)
VALUES
(
	143,
	NULL,
	1
)

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

-- Access.Jet.Odbc AccessODBC

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

