-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @blob Blob -- Object
SET     @blob = Oracle.ManagedDataAccess.Types.OracleBlob

INSERT INTO "LinqDataTypes"
(
	ID,
	"BinaryValue"
)
VALUES
(
	-10,
	:blob
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @blob Blob -- Object
SET     @blob = Oracle.ManagedDataAccess.Types.OracleBlob

INSERT INTO "LinqDataTypes"
(
	ID,
	"BinaryValue"
)
VALUES
(
	-20,
	:blob
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LENGTH("BinaryValue")
FROM
	"LinqDataTypes" x
WHERE
	x.ID IN (-10, -20)

RollbackTransaction
