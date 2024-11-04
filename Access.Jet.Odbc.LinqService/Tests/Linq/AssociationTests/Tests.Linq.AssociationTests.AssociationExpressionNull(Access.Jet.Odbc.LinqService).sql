BeforeExecute
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
DECLARE @ID  -- Int32
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
DECLARE @ID  -- Int32
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
DECLARE @ParentID  -- Int32
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
	[a_ChildOuter].[ParentID]
FROM
	[NotNullParent] [p]
		LEFT JOIN [NotNullChild] [a_ChildOuter] ON ([p].[ID] = [a_ChildOuter].[ParentID])
ORDER BY
	[p].[ID]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NotNullChild]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NotNullParent]

