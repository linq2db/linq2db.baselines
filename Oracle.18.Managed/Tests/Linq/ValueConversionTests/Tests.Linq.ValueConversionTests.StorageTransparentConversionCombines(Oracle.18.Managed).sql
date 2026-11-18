-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Marked Int32
SET     @Marked = 5
DECLARE @Plain Int32
SET     @Plain = 5

INSERT INTO "StorageTransparentRow"
(
	"Id",
	"Marked",
	"Plain"
)
VALUES
(
	:Id,
	:Marked,
	:Plain
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Marked Int32
SET     @Marked = 6
DECLARE @Plain Int32
SET     @Plain = 7

INSERT INTO "StorageTransparentRow"
(
	"Id",
	"Marked",
	"Plain"
)
VALUES
(
	:Id,
	:Marked,
	:Plain
)

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"StorageTransparentRow" r
WHERE
	r."Marked" = r."Plain"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Marked" + r."Plain"
FROM
	"StorageTransparentRow" r
ORDER BY
	r."Id"

