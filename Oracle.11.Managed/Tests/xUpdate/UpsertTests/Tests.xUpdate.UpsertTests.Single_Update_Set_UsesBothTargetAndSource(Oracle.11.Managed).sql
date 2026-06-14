-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'inc'
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
		"Version" = t1."Version" + :Version,
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

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Name",
	r."Version",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

