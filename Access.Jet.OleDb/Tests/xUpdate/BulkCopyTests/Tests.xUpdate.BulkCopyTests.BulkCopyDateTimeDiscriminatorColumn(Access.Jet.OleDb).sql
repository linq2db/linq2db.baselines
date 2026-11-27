-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @TestDate Date -- DateTime
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

