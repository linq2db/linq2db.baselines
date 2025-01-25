BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NotNullParent]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
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
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NotNullChild]
(
	[ParentID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
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
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON [p].[ID] = [a_ChildInner].[ParentID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullParent]

