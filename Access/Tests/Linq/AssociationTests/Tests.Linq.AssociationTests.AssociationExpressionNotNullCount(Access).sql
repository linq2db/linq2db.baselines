BeforeExecute
-- Access AccessOleDb

DROP TABLE [NotNullParent]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [NotNullParent]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [NotNullChild]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [NotNullChild]
(
	[ParentID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON ([p].[ID] = [a_ChildInner].[ParentID])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [NotNullChild]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [NotNullParent]

