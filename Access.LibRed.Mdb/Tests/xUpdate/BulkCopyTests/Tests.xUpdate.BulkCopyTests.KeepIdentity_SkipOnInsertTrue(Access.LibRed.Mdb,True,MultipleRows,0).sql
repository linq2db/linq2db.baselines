-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	@@IDENTITY

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @lastId  -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

