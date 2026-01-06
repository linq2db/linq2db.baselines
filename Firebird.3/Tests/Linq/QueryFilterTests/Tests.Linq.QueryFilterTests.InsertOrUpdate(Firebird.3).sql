-- Firebird.3 Firebird3

MERGE INTO "Issue5289Table" "t1"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId",
		"Deleted"
	)
	VALUES
	(
		1,
		2,
		FALSE
	)

-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"Issue5289Table" "r"
WHERE
	NOT "r"."Deleted" AND "r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3

MERGE INTO "Issue5289Table" "t1"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId",
		"Deleted"
	)
	VALUES
	(
		1,
		2,
		FALSE
	)

-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"Issue5289Table" "r"
WHERE
	NOT "r"."Deleted" AND "r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

