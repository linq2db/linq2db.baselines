BeforeExecute
-- SqlCe
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlCe

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
SELECT 138,200 UNION ALL
SELECT 148,300

BeforeExecute
-- SqlCe

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 128

SELECT
	[_].[ID],
	[_].[intDataType]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] > @lastId
ORDER BY
	[_].[ID]

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 128

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

