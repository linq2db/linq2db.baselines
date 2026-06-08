-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified TimeStamp -- DateTime
SET     @modified = TIMESTAMP '2026-02-02 09:00:00.000000'
DECLARE @UpdatedBy Varchar2(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

MERGE INTO "UpsertTest" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = :Name,
		"Version" = :Version,
		"CreatedAt" = :CreatedAt,
		"UpdatedAt" = :modified,
		"UpdatedBy" = :UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"UpdatedAt",
		"UpdatedBy"
	)
	VALUES
	(
		:Id,
		:Name,
		:Version,
		:CreatedAt,
		:modified,
		:UpdatedBy
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version" as "Version_1",
	t1."CreatedAt",
	t1."CreatedBy",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"UpsertTest" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Int32
SET     @Version = 2
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified TimeStamp -- DateTime
SET     @modified = TIMESTAMP '2026-02-02 09:00:00.000000'
DECLARE @UpdatedBy Varchar2(12) -- String
SET     @UpdatedBy = 'sys-root-upd'

MERGE INTO "UpsertTest" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = :Name,
		"Version" = :Version,
		"CreatedAt" = :CreatedAt,
		"UpdatedAt" = :modified,
		"UpdatedBy" = :UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"UpdatedAt",
		"UpdatedBy"
	)
	VALUES
	(
		:Id,
		:Name,
		:Version,
		:CreatedAt,
		:modified,
		:UpdatedBy
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version" as "Version_1",
	t1."CreatedAt",
	t1."CreatedBy",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"UpsertTest" t1
FETCH NEXT 2 ROWS ONLY

