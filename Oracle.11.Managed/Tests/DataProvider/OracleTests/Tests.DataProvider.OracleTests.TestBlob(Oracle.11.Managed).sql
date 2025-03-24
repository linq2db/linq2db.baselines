﻿BeforeExecute
BeginTransaction
BeforeExecute
--  Oracle.11.Managed Oracle11
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

BeforeExecute
--  Oracle.11.Managed Oracle11
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

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	LENGTH("BinaryValue")
FROM
	"LinqDataTypes" x
WHERE
	x.ID IN (-10, -20)

BeforeExecute
RollbackTransaction
