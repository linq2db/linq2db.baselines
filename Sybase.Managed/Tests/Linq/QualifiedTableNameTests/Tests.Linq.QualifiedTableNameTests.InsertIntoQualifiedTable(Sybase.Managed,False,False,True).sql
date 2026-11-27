-- Sybase.Managed Sybase
SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [dbo].[QualifiedNameTable]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

