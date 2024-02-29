BeforeExecute
-- SQLite.MS SQLite

SELECT
	Max([_].[ID])
FROM
	[AllTypes] [_]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	'	',
	'	'
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	'
',
	'
'
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	'',
	''
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	'',
	''
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	'',
	''
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	'　',
	' '
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	char(0),
	char(0)
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ncharDataType],
	[char20DataType]
)
VALUES
(
	NULL,
	NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 2

SELECT
	[_].[ID],
	[_].[char20DataType],
	[_].[ncharDataType]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] > @lastId
ORDER BY
	[_].[ID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 2

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] > @lastId

