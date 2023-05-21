BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4043]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4043]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4043]
(
	[Id],
	[Value]
)
VALUES
(1,'{"Field1": 1, "Field2": -1 }')

BeforeExecute
-- SQLite.Classic SQLite

select Value from Issue4043

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4043]

