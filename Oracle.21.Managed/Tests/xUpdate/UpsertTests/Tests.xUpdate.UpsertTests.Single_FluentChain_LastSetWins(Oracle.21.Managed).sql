-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'row'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
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
		"CreatedBy" = 'second-root',
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
		'second-root',
		:UpdatedAt,
		'second-branch'
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

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

