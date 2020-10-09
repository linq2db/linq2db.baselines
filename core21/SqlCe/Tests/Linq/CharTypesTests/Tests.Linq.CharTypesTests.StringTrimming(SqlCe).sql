BeforeExecute
-- SqlCe

SELECT 
	Max([_].[ID])
FROM
	[AllTypes] [_]

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
	[_].[ID], 
	[_].[ncharDataType]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] > @lastId
ORDER BY
	[_].[ID]

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 2

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] > @lastId

