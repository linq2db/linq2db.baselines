BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [EnumCardinality]
(
	[Id]        INTEGER  NOT NULL,
	[Property1] NChar(1) NOT NULL,
	[Property2] NChar(1)     NULL,
	[Property3] NChar(1) NOT NULL,
	[Property4] NChar(1)     NULL,
	[Property5] NChar(1) NOT NULL,
	[Property6] NChar(1)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [EnumCardinality]
(
	[Id],
	[Property1],
	[Property2],
	[Property3],
	[Property4],
	[Property5],
	[Property6]
)
VALUES
(1,'A','A','A','A','A','A'),
(2,'B','B','B','B','B','B'),
(3,'C','C','C','C','C','C')

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Id],
	[_].[Property1],
	[_].[Property2],
	[_].[Property3],
	[_].[Property4],
	[_].[Property5],
	[_].[Property6]
FROM
	[EnumCardinality] [_]
WHERE
	[_].[Property4] < 'B'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [EnumCardinality]

