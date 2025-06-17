﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[object_id],
	OBJECT_SCHEMA_NAME([p].[object_id]),
	OBJECT_NAME([p].[object_id]),
	SUM(Coalesce([p].[rows], 0))
FROM
	[sys].[partitions] [p]
		INNER JOIN [sys].[objects] [a_Object] ON [p].[object_id] = [a_Object].[object_id]
WHERE
	[p].[index_id] IN (0, 1) AND [a_Object].[type] = N'U'
GROUP BY
	[p].[object_id]
ORDER BY
	[p].[object_id]

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = -345
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[object_id],
	OBJECT_SCHEMA_NAME([p].[object_id]),
	OBJECT_NAME([p].[object_id]),
	SUM(Coalesce([p].[rows], 0))
FROM
	[sys].[partitions] [p]
		INNER JOIN [sys].[objects] [a_Object] ON [p].[object_id] = [a_Object].[object_id]
WHERE
	[p].[index_id] IN (0, 1) AND [a_Object].[type] = N'U'
GROUP BY
	[p].[object_id]
ORDER BY
	[p].[object_id]

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[object_id],
	OBJECT_SCHEMA_NAME([p].[object_id]),
	OBJECT_NAME([p].[object_id]),
	SUM(Coalesce([p].[rows], 0))
FROM
	[sys].[partitions] [p]
		INNER JOIN [sys].[objects] [a_Object] ON [p].[object_id] = [a_Object].[object_id]
WHERE
	[p].[index_id] IN (0, 1) AND [a_Object].[type] = N'U'
GROUP BY
	[p].[object_id]
ORDER BY
	[p].[object_id]

