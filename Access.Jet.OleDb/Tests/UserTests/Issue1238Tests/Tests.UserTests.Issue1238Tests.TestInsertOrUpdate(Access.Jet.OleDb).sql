-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[InheritanceParent] [t1]

-- Access.Jet.OleDb AccessOleDb

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

-- Access.Jet.OleDb AccessOleDb

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

