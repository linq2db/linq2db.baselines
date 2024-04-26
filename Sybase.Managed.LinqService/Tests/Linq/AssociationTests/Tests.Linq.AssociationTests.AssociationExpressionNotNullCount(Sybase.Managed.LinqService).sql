BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NotNullParent') IS NOT NULL)
	DROP TABLE [NotNullParent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NotNullParent') IS NULL)
	EXECUTE('
		CREATE TABLE [NotNullParent]
		(
			[ID] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NotNullChild') IS NOT NULL)
	DROP TABLE [NotNullChild]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NotNullChild') IS NULL)
	EXECUTE('
		CREATE TABLE [NotNullChild]
		(
			[ParentID] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON [p].[ID] = [a_ChildInner].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NotNullChild') IS NOT NULL)
	DROP TABLE [NotNullChild]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NotNullParent') IS NOT NULL)
	DROP TABLE [NotNullParent]

