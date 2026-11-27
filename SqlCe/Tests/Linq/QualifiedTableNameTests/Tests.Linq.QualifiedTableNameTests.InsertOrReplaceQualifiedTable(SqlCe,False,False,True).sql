-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[QualifiedNameTable]
SET
	[Value] = @Value
WHERE
	[QualifiedNameTable].[ID] = @ID

-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [QualifiedNameTable]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[QualifiedNameTable]
SET
	[Value] = @Value
WHERE
	[QualifiedNameTable].[ID] = @ID

