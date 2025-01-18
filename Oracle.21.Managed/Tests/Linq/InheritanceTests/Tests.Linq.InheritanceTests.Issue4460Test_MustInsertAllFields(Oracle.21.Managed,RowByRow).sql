BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Code Varchar2(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname Varchar2(5) -- String
SET     @Surname = 'Black'

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(
	:Id,
	:Code,
	:Name,
	:Surname
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Code",
	t1."Id",
	t1."Name",
	t1."Surname"
FROM
	"Issue4460Table" t1

