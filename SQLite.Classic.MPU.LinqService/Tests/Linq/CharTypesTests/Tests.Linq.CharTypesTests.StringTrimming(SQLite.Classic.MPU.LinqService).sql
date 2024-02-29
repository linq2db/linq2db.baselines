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
	'test01',
	'test01'
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
	'test02  ',
	'test02  '
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
	'test03	 ',
	'test03	 '
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
	'test04
 ',
	'test04
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
	'test05 ',
	'test05 '
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
	'test06 ',
	'test06 '
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
	'test07 ',
	'test07 '
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
	'test08  ',
	'test08  '
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
	'test09  ',
	'test09     '
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
	'test10  ',
	'test10     '
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
	'test11  ',
	'test11     '
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
	'test12  ',
	'test12     '
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
	'test13  ',
	'test13     '
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
	'test14  ',
	'test14     '
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
	'test15  ',
	'test15     '
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
	'test16  ',
	'test16     '
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
	'test17  ',
	'test17     '
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
	'test18  ',
	'test18     '
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
	'test19  ',
	'test19     '
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
	'test20　 ',
	'test20     '
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

