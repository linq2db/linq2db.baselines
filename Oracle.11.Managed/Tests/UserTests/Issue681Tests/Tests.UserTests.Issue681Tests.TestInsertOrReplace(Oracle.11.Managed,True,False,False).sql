-- Oracle.11.Managed Oracle11

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

MERGE INTO "Issue681Table"@XE t1
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

-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

MERGE INTO "Issue681Table"@XE t1
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

