-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp Timestamp -- DateTime2
SET     @TimeStamp = '2020-02-29 17:54:55.123'::timestamp

INSERT INTO "ReservedWordColumn"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	:Id,
	:TimeStamp
)

