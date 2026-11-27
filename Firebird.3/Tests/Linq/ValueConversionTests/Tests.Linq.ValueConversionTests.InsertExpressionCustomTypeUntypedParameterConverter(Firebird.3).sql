-- Firebird.3 Firebird3
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	NULL
)

-- Firebird.3 Firebird3
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	NULL
)

-- Firebird.3 Firebird3
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	'test'
)

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"CustomFieldRecord" "t1"
ORDER BY
	"t1"."Id"

