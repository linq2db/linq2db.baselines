-- PostgreSQL.18 PostgreSQL12
CREATE TEMPORARY TABLE "EnumDmlRecordNotMapped"
(
	"Id"             Int                      NOT NULL,
	"Source"         text                         NULL,
	"Status"         enum_dml_status          NOT NULL,
	"NullableStatus" enum_dml_nullable_status     NULL
)
ON COMMIT PRESERVE ROWS



-- PostgreSQL.18 PostgreSQL12
INSERT INTO "EnumDmlRecordNotMapped"
(
	"Id",
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
(1,'TempTable','open'::enum_dml_status,'open'::enum_dml_nullable_status),
(2,'TempTable','closed'::enum_dml_status,NULL)



-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Source Text(6) -- String
SET     @Source = 'Insert'
DECLARE @Status Enum -- Object
SET     @Status = 'open'::enum_dml_status
DECLARE @NullableStatus Unknown -- Object
SET     @NullableStatus = NULL

INSERT INTO "EnumDmlRecordNotMapped"
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



INSERT BULK "EnumDmlRecordNotMapped"(Id, Source, Status, NullableStatus)



-- PostgreSQL.18 PostgreSQL12
MERGE INTO "EnumDmlRecordNotMapped" "Target"
USING (VALUES
	('Merge',6,'open'::enum_dml_status,'closed'::enum_dml_nullable_status),
	('Merge',7,'open'::enum_dml_status,NULL)
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



-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	"EnumDmlRecordNotMapped" t1
ORDER BY
	t1."Id"



-- PostgreSQL.18 PostgreSQL12
DROP TABLE IF EXISTS "EnumDmlRecordNotMapped"



