-- Firebird.5 Firebird4
INSERT INTO "Issue5975Row"
(
	"Id",
	"Plain",
	"Date"
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"Issue5975Row" "t1"
FETCH NEXT 2 ROWS ONLY

