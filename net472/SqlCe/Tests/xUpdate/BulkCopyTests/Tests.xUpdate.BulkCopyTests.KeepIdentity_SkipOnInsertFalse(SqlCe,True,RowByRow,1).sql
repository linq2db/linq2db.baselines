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
DECLARE @lastId Int -- Int32
SET     @lastId = 113

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

