-- Oracle.12.Managed Oracle.Managed Oracle12
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

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"ArrayLengthTable" t1
FETCH NEXT 2 ROWS ONLY

