-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO "StructDuOptRow"
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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Key Int32
SET     @Key = NULL

INSERT INTO "StructDuOptRow"
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
	"StructDuOptRow" x
ORDER BY
	x."Id"

