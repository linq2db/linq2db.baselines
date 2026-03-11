-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @data Blob -- Object
SET     @data = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"BinaryValue",
	"BoolValue"
)
VALUES
(
	1001,
	:data,
	1
)

-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

