-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[InheritanceParent] [t1]

-- Access.Ace.Odbc AccessODBC

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.Ace.Odbc AccessODBC

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

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

-- Access.Ace.Odbc AccessODBC

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

