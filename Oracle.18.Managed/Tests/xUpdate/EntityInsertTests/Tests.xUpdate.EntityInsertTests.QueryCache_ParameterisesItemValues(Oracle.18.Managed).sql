-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'first'
DECLARE @Version Int32
SET     @Version = 11
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'second'
DECLARE @Version Int32
SET     @Version = 21
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy Varchar2(2) -- String
SET     @CreatedBy = 'u2'

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

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy"
FROM
	"EntityInsertTest" t1
ORDER BY
	t1."Id"

