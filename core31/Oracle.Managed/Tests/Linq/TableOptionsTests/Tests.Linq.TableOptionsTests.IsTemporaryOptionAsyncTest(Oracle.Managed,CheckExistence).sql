BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "temp_table1"
		(
			ID      Int NOT NULL,
			"Value" Int NOT NULL
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO "temp_table1" (ID, "Value") VALUES (1,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "temp_table2"
		(
			ID      Int NOT NULL,
			"Value" Int NOT NULL
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "temp_table2"
(
	ID,
	"Value"
)
SELECT
	t1.ID,
	t1."Value"
FROM
	"temp_table1" t1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	"temp_table1" t1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	"temp_table2" t1

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO "temp_table1" (ID, "Value") VALUES (2,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @ID Int32
SET     @ID = 3
DECLARE @Value_1 Int32
SET     @Value_1 = 3

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
VALUES
(
	:ID,
	:Value_1
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "temp_table1" (ID, "Value") VALUES (4,5)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

TRUNCATE TABLE "temp_table1"

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

TRUNCATE TABLE "temp_table2"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

