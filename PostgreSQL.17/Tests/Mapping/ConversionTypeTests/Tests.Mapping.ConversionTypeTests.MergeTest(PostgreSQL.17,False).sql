-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "TrimTestTable" "Target"
USING (VALUES
	(1,'***OOO***'), (2,'***SSS***')
) "Source"
(
	"ID",
	"Data_1"
)
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Data"
)
VALUES
(
	"Source"."ID",
	"Source"."Data_1"
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "TrimTestTable" "Target"
USING (VALUES
	(3,'***III***')
) "Source"
(
	"ID",
	"Data_1"
)
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Data"
)
VALUES
(
	"Source"."ID",
	"Source"."Data_1"
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

