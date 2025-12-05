-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp DateTime
SET     @TimeStamp = #2020-02-29 17:54:55#

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	?,
	?
)

