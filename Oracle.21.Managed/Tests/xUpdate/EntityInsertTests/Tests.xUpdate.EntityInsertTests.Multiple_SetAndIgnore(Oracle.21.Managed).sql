-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'n'
DECLARE @Version Int32
SET     @Version = 101
DECLARE @stamp TimeStamp -- DateTime
SET     @stamp = TIMESTAMP '2026-06-01 00:00:00.000000'

INSERT INTO "EntityInsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:stamp
)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version" as "Version_1",
	t1."CreatedAt",
	t1."CreatedBy"
FROM
	"EntityInsertTest" t1
FETCH NEXT 2 ROWS ONLY

