BeforeExecute
-- SqlCe

SELECT
	MAX([t1].[ID]) as [MAX_1]
FROM
	[AllTypes] [t1]

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test01'
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test02  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test03	 '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test04
 '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test05 '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test06 '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test07 '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test08  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test09  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test10  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test11  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test12  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test13  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test14  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test15  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test16  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test17  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test18  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test19  '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'test20　 '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	NULL
)

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 2

SELECT
	[t1].[ID] as [Id],
	[t1].[ncharDataType] as [NString]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 2

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] > @lastId

