BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_in_1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "test_in_1"
		(
			ID Int     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 3

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = NULL

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_in_2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "test_in_2"
		(
			ID Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO "test_in_2"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 2

INSERT INTO "test_in_2"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t.ID
FROM
	"test_in_1" t
WHERE
	(t.ID IS NULL OR t.ID IS NULL OR t.ID NOT IN (
		SELECT
			p.ID
		FROM
			"test_in_2" p
	))

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_2" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_in_2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_in_1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

