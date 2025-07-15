BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

