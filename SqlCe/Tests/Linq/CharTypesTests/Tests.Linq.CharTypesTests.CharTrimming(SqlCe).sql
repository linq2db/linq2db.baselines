BeforeExecute
-- SqlCe

SELECT
	Max([_].[ID]) as [Max_1]
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
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'	'
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'
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
	''
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	''
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	''
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	' '
)

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	'　'
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
	[_].[ID] as [Id],
	[_].[ncharDataType] as [NChar_1]
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

