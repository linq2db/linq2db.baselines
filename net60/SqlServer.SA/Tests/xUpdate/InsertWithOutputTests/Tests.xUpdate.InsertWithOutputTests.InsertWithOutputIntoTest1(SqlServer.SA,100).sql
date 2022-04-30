﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [#TInserted]
(
	[ParentID] Int NOT NULL,
	[ChildID]  Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 100
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
INTO [#TInserted]
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
-- SqlServer.SA SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[#TInserted] [c_1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE [#TInserted]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

