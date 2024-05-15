BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NULL)
	CREATE TABLE [NotNullParent]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NULL)
	CREATE TABLE [NotNullChild]
	(
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [NotNullParent]

