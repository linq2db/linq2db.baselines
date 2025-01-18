BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

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

