-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @EmptyCount Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount Int32
SET     @ItemsCount = 2

INSERT INTO "CountTarget"
(
	"Id",
	"EmptyCount",
	"ItemsCount"
)
VALUES
(
	1,
	:EmptyCount,
	:ItemsCount
)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."EmptyCount",
	t1."ItemsCount"
FROM
	"CountTarget" t1
FETCH NEXT 2 ROWS ONLY

