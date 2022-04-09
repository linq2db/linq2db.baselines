﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @blob_1 Blob -- Object
SET     @blob_1 = Oracle.ManagedDataAccess.Types.OracleBlob

INSERT INTO "LinqDataTypes"
(
	ID,
	"BinaryValue"
)
VALUES
(
	-10,
	:blob_1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @blob_1 Blob -- Object
SET     @blob_1 = Oracle.ManagedDataAccess.Types.OracleBlob

INSERT INTO "LinqDataTypes"
(
	ID,
	"BinaryValue"
)
VALUES
(
	-20,
	:blob_1
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	LENGTH("BinaryValue")
FROM
	"LinqDataTypes" x
WHERE
	x.ID IN (-10, -20)

BeforeExecute
RollbackTransaction
