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
-- SqlCe (asynchronously)

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
SELECT 177,200 UNION ALL
SELECT 187,300

BeforeExecute
-- SqlCe (asynchronously)

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 167

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
SET     @lastId = 167

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

