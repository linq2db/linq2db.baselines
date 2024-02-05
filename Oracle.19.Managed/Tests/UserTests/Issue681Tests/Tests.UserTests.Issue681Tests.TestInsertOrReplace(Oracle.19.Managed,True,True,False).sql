﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue681Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue681Table"
		(
			ID      Int NOT NULL,
			"Value" Int NOT NULL,

			CONSTRAINT "PK_Issue681Table" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
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
		t1."Value" = :Value
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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
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
		t1."Value" = :Value
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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue681Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

