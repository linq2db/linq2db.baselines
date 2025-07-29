-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "Issue4940RecordNotMapped"
(
	"Id"             Int                NOT NULL,
	"Source"         text                   NULL,
	"Status"         issue4940db_status NOT NULL,
	"NullableStatus" issue4940db_status     NULL
)
ON COMMIT PRESERVE ROWS



-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4940RecordNotMapped"
(
	"Id",
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
(1,'TempTable','open'::issue4940db_status,'open'::issue4940db_status),
(2,'TempTable','closed'::issue4940db_status,NULL)



-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Source Text(6) -- String
SET     @Source = 'Insert'
DECLARE @Status Enum -- Object
SET     @Status = 'open'::issue4940db_status
DECLARE @NullableStatus Unknown -- Object
SET     @NullableStatus = NULL

INSERT INTO "Issue4940RecordNotMapped"
(
	"Id",
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
(
	:Id,
	:Source,
	:Status,
	:NullableStatus
)



INSERT BULK "Issue4940RecordNotMapped"(Id, Source, Status, NullableStatus)



-- PostgreSQL.15 PostgreSQL

MERGE INTO "Issue4940RecordNotMapped" "Target"
USING (VALUES
	('Merge',6,'open'::issue4940db_status,'closed'::issue4940db_status),
	('Merge',7,'open'::issue4940db_status,NULL)
) "Source"
(
	"Source",
	"Id",
	"Status",
	"NullableStatus"
)
ON ("Target"."Source" = "Source"."Source" OR "Target"."Source" IS NULL AND "Source"."Source" IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
(
	"Source"."Id",
	"Source"."Source",
	"Source"."Status",
	"Source"."NullableStatus"
)

WHEN MATCHED THEN
UPDATE
SET
	"Id" = "Source"."Id",
	"Source" = "Source"."Source",
	"Status" = "Source"."Status",
	"NullableStatus" = "Source"."NullableStatus"



-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	"Issue4940RecordNotMapped" t1
ORDER BY
	t1."Id"



-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4940RecordNotMapped"



