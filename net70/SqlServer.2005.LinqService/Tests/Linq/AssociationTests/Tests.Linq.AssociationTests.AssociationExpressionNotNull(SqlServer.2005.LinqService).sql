BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NOT NULL)
	DROP TABLE [NotNullParent]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NULL)
	CREATE TABLE [NotNullParent]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 2

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NOT NULL)
	DROP TABLE [NotNullChild]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NULL)
	CREATE TABLE [NotNullChild]
	(
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(
	@ParentID
)

BeforeExecute
-- SqlServer.2005

SELECT
	[a_ChildInner].[ParentID]
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON [p].[ID] = [a_ChildInner].[ParentID]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NOT NULL)
	DROP TABLE [NotNullChild]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NOT NULL)
	DROP TABLE [NotNullParent]

