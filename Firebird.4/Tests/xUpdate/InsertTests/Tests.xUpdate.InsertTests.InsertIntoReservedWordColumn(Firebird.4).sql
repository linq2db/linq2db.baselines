-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp TimeStamp -- DateTime
SET     @TimeStamp = TIMESTAMP '2020-02-29 17:54:55.1231'

INSERT INTO "ReservedWordColumn"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp
)

