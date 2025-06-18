--  PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE issue_4940_temp_table
(
	"Id"             integer            NOT NULL,
	"Source"         text               NOT NULL,
	"Status"         issue4940db_status NOT NULL,
	"NullableStatus" issue4940db_status     NULL
)
ON COMMIT PRESERVE ROWS



--  PostgreSQL.15 PostgreSQL

INSERT INTO issue_4940_temp_table
(
	"Id",
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
(1,'TempTable','open'::issue4940db_status,'closed'::issue4940db_status),
(2,'TempTable','closed'::issue4940db_status,NULL)



--  PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Source Text(6) -- String
SET     @Source = 'Insert'
DECLARE @Status Enum -- Object
SET     @Status = 'open'::issue4940db_status
DECLARE @NullableStatus Enum -- Object
SET     @NullableStatus = 'closed'::issue4940db_status

INSERT INTO "Issue4940DBRecords"
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



--  PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Source Text(6) -- String
SET     @Source = 'Insert'
DECLARE @Status Enum -- Object
SET     @Status = 'closed'::issue4940db_status
DECLARE @NullableStatus Unknown -- Object
SET     @NullableStatus = NULL

INSERT INTO "Issue4940DBRecords"
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



INSERT BULK "Issue4940DBRecords"(Id, Source, Status, NullableStatus)



--  PostgreSQL.15 PostgreSQL

MERGE INTO "Issue4940DBRecords" "Target"
USING (VALUES
	('Merge',5,'open'::issue4940db_status,'open'::issue4940db_status),
	('Merge',6,'open'::issue4940db_status,NULL)
) "Source"
(
	"source_Source",
	"source_Id",
	"source_Status",
	"source_NullableStatus"
)
ON ("Target"."Source" = "Source"."source_Source")

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
	"Source"."source_Id",
	"Source"."source_Source",
	"Source"."source_Status",
	"Source"."source_NullableStatus"
)

WHEN MATCHED THEN
UPDATE
SET
	"Id" = "Source"."source_Id",
	"Source" = "Source"."source_Source",
	"Status" = "Source"."source_Status",
	"NullableStatus" = "Source"."source_NullableStatus"



--  PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	"Issue4940DBRecords" t1
ORDER BY
	t1."Id"



--  PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	issue_4940_temp_table t1
ORDER BY
	t1."Id"



