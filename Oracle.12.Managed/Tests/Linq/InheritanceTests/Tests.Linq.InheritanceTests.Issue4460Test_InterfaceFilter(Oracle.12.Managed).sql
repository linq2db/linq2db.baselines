-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jane'

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name"
)
VALUES
(
	:Code,
	:Id,
	:Name
)

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Age"
)
VALUES
(
	:Code,
	:Id,
	:Age
)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	e."Code",
	e."Id",
	e."Age",
	e."Name"
FROM
	"Base" e
WHERE
	e."Code" <> 'Child' OR e."Code" IS NULL

