﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 10
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO SYSTEM."Issue681Table4"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

