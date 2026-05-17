-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

MERGE INTO SYSTEM."Issue681Table"@"free" t1
USING (SELECT :ID AS ID FROM SYS.DUAL) s ON
(
	t1.ID = s.ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = :Value
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Value"
	)
	VALUES
	(
		:ID,
		:Value
	)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

MERGE INTO SYSTEM."Issue681Table"@"free" t1
USING (SELECT :ID AS ID FROM SYS.DUAL) s ON
(
	t1.ID = s.ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = :Value
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Value"
	)
	VALUES
	(
		:ID,
		:Value
	)

