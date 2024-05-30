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

INSERT INTO [NotNullParent]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 2

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

INSERT INTO [NotNullChild]
(
	[ParentID]
)
SELECT 1

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

