BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp Timestamp -- DateTime2
SET     @TimeStamp = '2020-02-29 17:54:55.123'::timestamp

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	:Id,
	:TimeStamp
)

