BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NotNullParent]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NotNullChild]
(
	[ParentID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullParent]

