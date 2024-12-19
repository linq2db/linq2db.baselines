BeforeExecute
-- SqlCe

SELECT
	MAX([t1].[ID]) as [MAX_1]
FROM
	[AllTypes] [t1]

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(6) -- String
SET     @NString = 'test01'

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test02  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test03	 '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test04
 '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test05 '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test06 '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test07 '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test08  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test09  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test10  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test11  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test12  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test13  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test14  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test15  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test16  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test17  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test18  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test19  '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar(8) -- String
SET     @NString = 'test20　 '

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
)

BeforeExecute
-- SqlCe
DECLARE @NString NVarChar -- String
SET     @NString = NULL

INSERT INTO [AllTypes]
(
	[ncharDataType]
)
VALUES
(
	@NString
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

