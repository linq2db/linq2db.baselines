BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SimpleBulkCopyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "SimpleBulkCopyTable"
		(
			"Id" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (10)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (20)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Id Int32
SET     @Id = 30

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SimpleBulkCopyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

