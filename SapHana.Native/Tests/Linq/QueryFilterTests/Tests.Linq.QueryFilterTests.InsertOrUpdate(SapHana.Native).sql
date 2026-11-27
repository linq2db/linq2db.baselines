-- SapHana.Native SapHana
UPDATE
	"SoftDeletedPictureTable" "t1"
SET
	"PictureId" = 3
WHERE
	"t1"."Id" = 1

-- SapHana.Native SapHana
INSERT INTO "SoftDeletedPictureTable"
(
	"Id",
	"PictureId",
	"Deleted"
)
VALUES
(
	1,
	2,
	0
)

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"SoftDeletedPictureTable" "r"
WHERE
	"r"."Deleted" = 0 AND "r"."Id" = 1
LIMIT 2

-- SapHana.Native SapHana
UPDATE
	"SoftDeletedPictureTable" "t1"
SET
	"PictureId" = 3
WHERE
	"t1"."Id" = 1

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"SoftDeletedPictureTable" "r"
WHERE
	"r"."Deleted" = 0 AND "r"."Id" = 1
LIMIT 2

