BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	MOD(TO_NUMBER(TO_CHAR(t."DateTimeValue", 'FF')) / 1000, 7)
FROM
	"LinqDataTypes" t

