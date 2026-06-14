-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'n'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL

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
	:CreatedAt
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy"
FROM
	"EntityInsertTest" t1
WHERE
	ROWNUM <= 2

