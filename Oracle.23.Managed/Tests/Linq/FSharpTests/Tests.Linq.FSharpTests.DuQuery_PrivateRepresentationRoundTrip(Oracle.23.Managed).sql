-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 7

INSERT INTO "PrivateDuRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	x."Key"
FROM
	"PrivateDuRow" x
ORDER BY
	x."Id"

