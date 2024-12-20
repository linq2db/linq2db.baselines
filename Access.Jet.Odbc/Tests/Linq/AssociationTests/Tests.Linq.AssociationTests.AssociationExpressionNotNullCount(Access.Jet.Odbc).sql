﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NotNullParent]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [NotNullParent]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
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
-- Access.Jet.Odbc AccessODBC
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
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NotNullChild]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [NotNullChild]
(
	[ParentID] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
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
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON ([p].[ID] = [a_ChildInner].[ParentID])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NotNullChild]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NotNullParent]

