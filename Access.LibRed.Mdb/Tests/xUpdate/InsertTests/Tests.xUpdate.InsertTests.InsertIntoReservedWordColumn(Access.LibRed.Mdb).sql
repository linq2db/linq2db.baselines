-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @TimeStamp  -- DateTime
SET     @TimeStamp = #2020-02-29 17:54:55#

INSERT INTO [ReservedWordColumn]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp
)

