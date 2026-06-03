-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @Stored Varchar2(4) -- String
SET     @Stored = 'John'

INSERT INTO "CalcSubtypeDual"
(
	"Id",
	"Type",
	"Stored"
)
VALUES
(
	:Id,
	:Type,
	:Stored
)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Type" as "Type_1",
	t1."Id",
	t1."Stored",
	t1."Stored" || '!' as "Computed"
FROM
	"CalcSubtypeDual" t1
FETCH NEXT 2 ROWS ONLY

