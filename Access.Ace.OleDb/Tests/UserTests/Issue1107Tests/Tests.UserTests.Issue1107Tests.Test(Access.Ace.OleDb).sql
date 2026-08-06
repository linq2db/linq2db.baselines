-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @TestDate Date -- DateTime
SET     @TestDate = #2018-01-01#

INSERT INTO [Issue1107TB]
(
	[Id],
	[TestDate]
)
VALUES
(
	@Id,
	@TestDate
)

