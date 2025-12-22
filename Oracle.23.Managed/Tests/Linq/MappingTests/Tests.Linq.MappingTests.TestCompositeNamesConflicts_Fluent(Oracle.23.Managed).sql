-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Customer_Name Varchar2(5) -- String
SET     @Customer_Name = 'name1'
DECLARE @CustomerOther_Name Varchar2(5) -- String
SET     @CustomerOther_Name = 'name2'

INSERT INTO "Issue5266TableFluent"
(
	"Id",
	"child1_name",
	"child2_name"
)
VALUES
(
	:Id,
	:Customer_Name,
	:CustomerOther_Name
)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."child1_name" as "Name",
	t1."child2_name" as "Name_1"
FROM
	"Issue5266TableFluent" t1
FETCH NEXT 2 ROWS ONLY

