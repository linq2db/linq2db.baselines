﻿BeforeExecute
-- SqlServer.2016

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2016

CREATE TABLE [TInserted]
(
	[ParentID] Int NOT NULL,
	[ChildID]  Int NOT NULL,

	CONSTRAINT [PK_TInserted] PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
)

BeforeExecute
-- SqlServer.2016
DECLARE @param Int -- Int32
SET     @param = 200
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	[INSERTED].[ChildID],
	[INSERTED].[ParentID] + @param
INTO [TInserted]
(
	[ChildID],
	[ParentID]
)
SELECT
	[c_1].[ParentID],
	@id
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlServer.2016

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[TInserted] [c_1]

BeforeExecute
-- SqlServer.2016

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TInserted]

BeforeExecute
-- SqlServer.2016

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

