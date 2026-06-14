-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 42
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'seed'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy Varchar2 -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Varchar2 -- String
SET     @UpdatedBy = NULL

INSERT INTO "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:CreatedAt,
	:CreatedBy,
	:UpdatedAt,
	:UpdatedBy
)

-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "UpsertTest" Target
USING (
	SELECT 42 AS "Id", 'first-update' AS "Name", 50 AS "Version_1", NULL AS "CreatedAt", NULL AS "CreatedBy", NULL AS "UpdatedAt", NULL AS "UpdatedBy" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "UpsertTest" Target
USING (
	SELECT 42 AS "Id", 'second-update' AS "Name", 99 AS "Version_1", NULL AS "CreatedAt", NULL AS "CreatedBy", NULL AS "UpdatedAt", NULL AS "UpdatedBy" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Name",
	r."Version" as "Version_1",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Id" = 42
FETCH NEXT 2 ROWS ONLY

