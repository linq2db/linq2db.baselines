-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 10
DECLARE @TimeStamp TimeStamp -- DateTime
SET     @TimeStamp = TIMESTAMP '2020-02-29 17:54:55.123123'

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

