-- SapHana.Odbc SapHanaOdbc

MERGE INTO "CacheTestTable" "Target"
USING (
	SELECT 1 AS "Id", 1 AS "Value_1" FROM DUMMY
	UNION ALL
	SELECT 2, 2 FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

MERGE INTO "CacheTestTable" "Target"
USING (
	SELECT 1 AS "Id", 1 AS "Value_1" FROM DUMMY
	UNION ALL
	SELECT 2, 4 FROM DUMMY
	UNION ALL
	SELECT 3, 3 FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

