-- PostgreSQL.19 PostgreSQL12
CREATE TEMPORARY TABLE enum_dml_temp_table
(
	"Id"             integer                  NOT NULL,
	"Source"         text                     NOT NULL,
	"Status"         enum_dml_status          NOT NULL,
	"NullableStatus" enum_dml_nullable_status     NULL
)
ON COMMIT PRESERVE ROWS



-- PostgreSQL.19 PostgreSQL12
INSERT INTO enum_dml_temp_table
(
	"Id",
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
(1,'TempTable','open'::enum_dml_status,'closed'::enum_dml_nullable_status),
(2,'TempTable','closed'::enum_dml_status,NULL)



-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Source Text(6) -- String
SET     @Source = 'Insert'
DECLARE @Status Enum -- Object
SET     @Status = 'open'::enum_dml_status
DECLARE @NullableStatus Enum -- Object
SET     @NullableStatus = 'closed'::enum_dml_nullable_status

INSERT INTO "EnumDmlRecords"
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



-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Source Text(6) -- String
SET     @Source = 'Insert'
DECLARE @Status Enum -- Object
SET     @Status = 'closed'::enum_dml_status
DECLARE @NullableStatus Unknown -- Object
SET     @NullableStatus = NULL

INSERT INTO "EnumDmlRecords"
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



INSERT BULK "EnumDmlRecords"(Id, Source, Status, NullableStatus)



-- PostgreSQL.19 PostgreSQL12
MERGE INTO "EnumDmlRecords" "Target"
USING (VALUES
	('Merge',5,'open'::enum_dml_status,'open'::enum_dml_nullable_status),
	('Merge',6,'open'::enum_dml_status,NULL)
) "Source"
(
	"Source",
	"Id",
	"Status",
	"NullableStatus"
)
ON ("Target"."Source" = "Source"."Source")

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



-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	"EnumDmlRecords" t1
ORDER BY
	t1."Id"



-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	enum_dml_temp_table t1
ORDER BY
	t1."Id"



-- PostgreSQL.19 PostgreSQL12
DROP TABLE IF EXISTS enum_dml_temp_table



