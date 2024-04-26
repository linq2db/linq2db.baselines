﻿BeforeExecute
-- SqlCe

DROP TABLE [NotNullParent]

BeforeExecute
-- SqlCe

CREATE TABLE [NotNullParent]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [NotNullParent]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlCe

DROP TABLE [NotNullChild]

BeforeExecute
-- SqlCe

CREATE TABLE [NotNullChild]
(
	[ParentID] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [NotNullChild]
(
	[ParentID]
)
SELECT 1

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[NotNullParent] [p]
		LEFT JOIN [NotNullChild] [a_ChildOuter] ON [p].[ID] = [a_ChildOuter].[ParentID]

BeforeExecute
-- SqlCe

DROP TABLE [NotNullChild]

BeforeExecute
-- SqlCe

DROP TABLE [NotNullParent]

