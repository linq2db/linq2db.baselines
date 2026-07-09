-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @Name_First Varchar2(4) -- String
SET     @Name_First = 'John'
DECLARE @Name_Second Varchar2(3) -- String
SET     @Name_Second = 'Doe'

INSERT INTO "CalcSubtypeTable"
(
	"Id",
	"Type",
	"Name_First",
	"Name_Second"
)
VALUES
(
	:Id,
	:Type,
	:Name_First,
	:Name_Second
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Type",
	t1."Name_First",
	t1."Name_Second",
	t1."Name_First" || ' ' || t1."Name_Second"
FROM
	"CalcSubtypeTable" t1
WHERE
	ROWNUM <= 2

