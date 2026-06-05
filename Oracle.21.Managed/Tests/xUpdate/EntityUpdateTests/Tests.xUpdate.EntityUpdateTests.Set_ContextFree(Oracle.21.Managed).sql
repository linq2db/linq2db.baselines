-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'x'
DECLARE @Version Int32
SET     @Version = 5
DECLARE @stamp TimeStamp -- DateTime
SET     @stamp = TIMESTAMP '2026-06-01 00:00:00.000000'
DECLARE @UpdatedBy Varchar2 -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" t
SET
	"Name" = :Name,
	"Version" = :Version,
	"UpdatedAt" = :stamp,
	"UpdatedBy" = :UpdatedBy
WHERE
	t."Id" = :Id

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version" as "Version_1",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"EntityUpdateTest" t1
FETCH NEXT 2 ROWS ONLY

