-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"CustomFieldRecord" "t1"
ORDER BY
	"t1"."Id"

