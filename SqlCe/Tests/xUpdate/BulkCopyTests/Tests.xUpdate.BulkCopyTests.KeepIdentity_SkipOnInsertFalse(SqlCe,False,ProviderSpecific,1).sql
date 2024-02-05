BeforeExecute
-- SqlCe

ALTER TABLE AllTypes ALTER COLUMN ID IDENTITY(3,1)

BeforeExecute
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

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [AllTypes]
(
	[intDataType]
)
SELECT 200 UNION ALL
SELECT 300

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 3

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
SET     @lastId = 3

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

