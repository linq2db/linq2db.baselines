﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [NotNullParent]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [NotNullParent]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [NotNullChild]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [NotNullChild]
(
	[ParentID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

SELECT
	[a_ChildInner].[ParentID]
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON ([p].[ID] = [a_ChildInner].[ParentID])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [NotNullChild]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [NotNullParent]

