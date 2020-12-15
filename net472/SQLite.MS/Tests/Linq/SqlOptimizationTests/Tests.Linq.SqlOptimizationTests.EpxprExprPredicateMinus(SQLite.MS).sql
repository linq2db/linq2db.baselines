BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [DataClass]
(
	[Id]          INTEGER       NOT NULL,
	[IntValue]    INTEGER       NOT NULL,
	[StringValue] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [DataClass]
(
	[Id],
	[IntValue],
	[StringValue]
)
VALUES
(1,1,'Str1Value'),
(2,2,'Str2Value'),
(3,3,'Str3Value'),
(4,4,'Str4Value'),
(5,5,'Str5Value'),
(6,6,'Str6Value'),
(7,7,'Str7Value'),
(8,8,'Str8Value'),
(9,9,'Str9Value'),
(10,10,'Str10Value')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[IntValue],
	[t].[StringValue]
FROM
	[DataClass] [t]
WHERE
	[t].[Id] > 6

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[IntValue],
	[t].[StringValue]
FROM
	[DataClass] [t]
WHERE
	5 < [t].[Id] - 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[IntValue],
	[t].[StringValue]
FROM
	[DataClass] [t]
WHERE
	2 > [t].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[IntValue],
	[t].[StringValue]
FROM
	[DataClass] [t]
WHERE
	[t].[Id] < 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [DataClass]

