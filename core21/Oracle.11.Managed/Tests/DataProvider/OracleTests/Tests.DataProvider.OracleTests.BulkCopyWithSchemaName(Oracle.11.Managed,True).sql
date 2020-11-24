BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE BULKCOPYTABLE
(
	ID Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	user
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
INSERT BULK SYSTEM.BULKCOPYTABLE(ID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE BULKCOPYTABLE

