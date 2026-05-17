-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

-- SqlCe

SELECT @@IDENTITY

-- SqlCe

SET IDENTITY_INSERT [AllTypes] ON

-- SqlCe

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
SELECT 13,200 UNION ALL
SELECT 23,300

-- SqlCe

SET IDENTITY_INSERT [AllTypes] OFF

-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 3

SELECT
	[t1].[ID],
	[t1].[intDataType] as [Value_1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

