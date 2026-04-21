-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'first'
DECLARE @Version Int32
SET     @Version = 10
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy Varchar2 -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Varchar2 -- String
SET     @UpdatedBy = NULL

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
		"CreatedBy" = :CreatedBy,
		"UpdatedAt" = :UpdatedAt,
		"UpdatedBy" = :UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'second'
DECLARE @Version Int32
SET     @Version = 20
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy Varchar2 -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Varchar2 -- String
SET     @UpdatedBy = NULL

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
		"CreatedBy" = :CreatedBy,
		"UpdatedAt" = :UpdatedAt,
		"UpdatedBy" = :UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"UpsertTest" t1
ORDER BY
	t1."Id"

