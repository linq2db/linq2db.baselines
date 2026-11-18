-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp TimeStamp -- DateTime2
SET     @TimeStamp = TIMESTAMP '2020-02-29 17:54:55.1231234'

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	:"Id",
	:"TimeStamp"
)

