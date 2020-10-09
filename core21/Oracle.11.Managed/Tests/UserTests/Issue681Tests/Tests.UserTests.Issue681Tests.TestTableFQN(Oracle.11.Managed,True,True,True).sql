BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	user
FROM
	LinqDataTypes t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.ID
FROM
	SYSTEM.LinqDataTypes@XE t1

