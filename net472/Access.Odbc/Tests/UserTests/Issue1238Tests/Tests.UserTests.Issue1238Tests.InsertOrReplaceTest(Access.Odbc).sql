﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = ?
WHERE
	[t1].[InheritanceParentId] = ? AND [t1].[Name] IS NULL

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1

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

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = ?
WHERE
	[t1].[InheritanceParentId] = ? AND [t1].[Name] IS NULL

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction
