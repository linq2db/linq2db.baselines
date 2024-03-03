﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [NotNullParent]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [NotNullParent]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [NotNullChild]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [NotNullChild]
(
	[ParentID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[NotNullParent] [p]
		LEFT JOIN [NotNullChild] [a_ChildOuter] ON (([p].[ID] = [a_ChildOuter].[ParentID]))

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [NotNullChild]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [NotNullParent]

