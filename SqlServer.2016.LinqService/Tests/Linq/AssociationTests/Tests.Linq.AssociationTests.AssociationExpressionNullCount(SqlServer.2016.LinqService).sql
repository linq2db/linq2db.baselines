BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[NotNullParent]', N'U') IS NULL)
	CREATE TABLE [NotNullParent]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
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
-- SqlServer.2016

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[NotNullChild]', N'U') IS NULL)
	CREATE TABLE [NotNullChild]
	(
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [NotNullParent]

