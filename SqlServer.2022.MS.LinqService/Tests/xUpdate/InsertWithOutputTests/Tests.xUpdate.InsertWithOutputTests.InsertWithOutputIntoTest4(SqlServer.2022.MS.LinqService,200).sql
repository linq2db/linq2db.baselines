BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TInserted]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TInserted]', N'U') IS NULL)
	CREATE TABLE [TInserted]
	(
		[ParentID] Int NOT NULL,
		[ChildID]  Int NOT NULL,

		CONSTRAINT [PK_TInserted] PRIMARY KEY CLUSTERED ([ParentID], [ChildID])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1001
DECLARE @param Int -- Int32
SET     @param = 200

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	INSERTED.[ParentID],
	INSERTED.[ChildID]
INTO [TInserted]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@id + @param
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[TInserted] [c_1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TInserted]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

