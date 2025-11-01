-- SqlCe

SELECT
	MAX([t1].[ID]) as [MAX_1]
FROM
	[AllTypes] [t1]

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = '	'

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = '
'

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ''

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ''

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ''

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = ' '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = '　'

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @NChar NVarChar -- String
SET     @NChar = NULL

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NChar
)

-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 2

SELECT
	[t1].[ID] as [Id],
	[t1].[ncharDataType] as [NChar_1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 2

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] > @lastId

