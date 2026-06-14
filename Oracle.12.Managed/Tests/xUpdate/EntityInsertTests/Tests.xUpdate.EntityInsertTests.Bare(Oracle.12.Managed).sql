-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(2) -- String
SET     @Name = 'n1'
DECLARE @Version Int32
SET     @Version = 7
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy Varchar2(2) -- String
SET     @CreatedBy = 'u1'

INSERT INTO "EntityInsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:CreatedAt,
	:CreatedBy
)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version" as "Version_1",
	t1."CreatedAt",
	t1."CreatedBy"
FROM
	"EntityInsertTest" t1
FETCH NEXT 2 ROWS ONLY

