﻿BeforeExecute
--  SQLite.MS SQLite

SELECT Max([Id]) FROM [Issue4702Table]

BeforeExecute
--  SQLite.MS SQLite

INSERT INTO [Issue4702Table]
(
	[Id],
	[Text]
)
VALUES
(1,'Text 1'),
(2,'Text 2')

BeforeExecute
--  SQLite.MS SQLite

INSERT INTO [Issue4702Table]
(
	[Text]
)
VALUES
(
	'Text 3'
)

