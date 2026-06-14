-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'stale'
DECLARE @Version Int32
SET     @Version = 3
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
	WHERE :Version > t1."Version"
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
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'fresh'
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
	WHERE :Version > t1."Version"
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
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

