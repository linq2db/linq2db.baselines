-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'async'
DECLARE @Version Int32
SET     @Version = 3
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Varchar2 -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" t
SET
	"Name" = :Name,
	"Version" = :Version,
	"UpdatedAt" = :UpdatedAt,
	"UpdatedBy" = :UpdatedBy
WHERE
	t."Id" = :Id

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version" as "Version_1",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"EntityUpdateTest" t1
FETCH NEXT 2 ROWS ONLY

