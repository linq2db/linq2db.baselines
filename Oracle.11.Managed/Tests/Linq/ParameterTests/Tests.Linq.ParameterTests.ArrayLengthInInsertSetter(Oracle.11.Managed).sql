-- Oracle.11.Managed Oracle11
DECLARE @arr Int32
SET     @arr = 3

INSERT INTO "ArrayLengthTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	:arr
)

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Value"
FROM
	"ArrayLengthTable" t1
WHERE
	ROWNUM <= 2

