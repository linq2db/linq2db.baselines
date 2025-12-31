-- Firebird.5 Firebird4

MERGE INTO "Issue5289Table" "r"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
(
	"r"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId"
	)
	VALUES
	(
		1,
		2
	)

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."PictureId"
FROM
	"Issue5289Table" "r"
WHERE
	("r"."Deleted" = FALSE OR "r"."Deleted" IS NULL) AND
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4

MERGE INTO "Issue5289Table" "r"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
(
	"r"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId"
	)
	VALUES
	(
		1,
		2
	)

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."PictureId"
FROM
	"Issue5289Table" "r"
WHERE
	("r"."Deleted" = FALSE OR "r"."Deleted" IS NULL) AND
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

