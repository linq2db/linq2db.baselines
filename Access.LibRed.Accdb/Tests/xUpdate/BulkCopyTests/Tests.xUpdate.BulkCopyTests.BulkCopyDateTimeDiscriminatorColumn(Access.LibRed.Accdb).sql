-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @TestDate  -- DateTime
SET     @TestDate = #2018-01-01#

INSERT INTO [DateTimeDiscriminator]
(
	[Id],
	[TestDate]
)
VALUES
(
	@Id,
	@TestDate
)

