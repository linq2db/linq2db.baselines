﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Max(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

MERGE INTO "AllTypes" Target
USING (
	SELECT 3 AS ID, chr(0) AS "charDataType", chr(0) AS "ncharDataType", 'test' || chr(0) || 'it' AS "nvarcharDataType" FROM sys.dual) "Source"
ON (Target.ID = "Source".ID)

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
VALUES
(
	"Source"."charDataType",
	"Source"."ncharDataType",
	"Source"."nvarcharDataType"
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ID,
	t1."charDataType",
	t1."ncharDataType",
	t1."nvarcharDataType"
FROM
	"AllTypes" t1
ORDER BY
	t1.ID DESC
FETCH NEXT :take ROWS ONLY

BeforeExecute
RollbackTransaction
