-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[InheritanceParent] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = ?
WHERE
	[t1].[InheritanceParentId] = ? AND [t1].[Name] IS NULL

-- Access.Ace.Odbc AccessODBC
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data Int -- Int32
SET     @Data = 1

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[Name],
	[TypeDiscriminator]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = ?
WHERE
	[t1].[InheritanceParentId] = ? AND [t1].[Name] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

