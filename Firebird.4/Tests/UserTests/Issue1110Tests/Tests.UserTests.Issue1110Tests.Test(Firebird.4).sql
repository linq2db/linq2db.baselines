-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp TimeStamp -- DateTime
SET     @TimeStamp = CAST('2020-02-29 17:54:55.123' AS timestamp)

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp
)

