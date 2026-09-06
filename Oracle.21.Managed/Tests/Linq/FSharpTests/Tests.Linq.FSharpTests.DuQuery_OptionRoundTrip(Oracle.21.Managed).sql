-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO "DuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Key Int32
SET     @Key = NULL

INSERT INTO "DuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	x."Key"
FROM
	"DuOptRow" x
ORDER BY
	x."Id"

