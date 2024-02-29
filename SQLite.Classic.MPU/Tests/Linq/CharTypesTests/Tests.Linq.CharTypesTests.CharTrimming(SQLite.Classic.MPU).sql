BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Max([_].[ID])
FROM
	[AllTypes] [_]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 2

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] > @lastId

