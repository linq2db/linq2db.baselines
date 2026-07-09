-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

SELECT
	t1."Type",
	t1."Id",
	t1."Stored",
	t1."Stored" || '!'
FROM
	"CalcSubtypeDual" t1
WHERE
	ROWNUM <= 2

