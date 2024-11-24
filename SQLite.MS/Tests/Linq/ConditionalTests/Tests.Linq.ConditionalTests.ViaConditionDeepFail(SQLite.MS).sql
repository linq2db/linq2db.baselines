BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConditionalData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ConditionalData]
(
	[Id]         INTEGER       NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(1,'String1'),
(2,'String2'),
(3,NULL),
(4,'String4'),
(5,'String5'),
(6,NULL),
(7,'String7'),
(8,'String8'),
(9,NULL),
(10,'String10'),
(11,'-1')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConditionalData]

