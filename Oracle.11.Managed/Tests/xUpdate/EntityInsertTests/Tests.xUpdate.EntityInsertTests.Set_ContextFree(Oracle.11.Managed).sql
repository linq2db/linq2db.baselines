-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'n'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @stamp TimeStamp -- DateTime
SET     @stamp = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @CreatedBy Varchar2 -- String
SET     @CreatedBy = NULL

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
	:stamp,
	:CreatedBy
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

