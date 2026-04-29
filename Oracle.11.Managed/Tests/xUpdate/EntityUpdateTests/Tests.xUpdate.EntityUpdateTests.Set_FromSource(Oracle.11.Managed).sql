-- Oracle.11.Managed Oracle11
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'alice'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" t
SET
	"Name" = :Name,
	"Version" = :Version,
	"UpdatedAt" = :UpdatedAt,
	"UpdatedBy" = :Name
WHERE
	t."Id" = :Id

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"EntityUpdateTest" t1
WHERE
	ROWNUM <= 2

