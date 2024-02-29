BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestSource"';
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
		CREATE TABLE "TestSource"
		(
			ID Int      NOT NULL,
			N  SmallInt NOT NULL
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
SET     @ID = 1000
DECLARE @N Int16
SET     @N = 42

INSERT INTO "TestSource"
(
	ID,
	N
)
VALUES
(
	:ID,
	:N
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @N Int16
SET     @N = 20

INSERT INTO "TestSource"
(
	ID,
	N
)
VALUES
(
	:ID,
	:N
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest1"';
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
		CREATE TABLE "Dest1"
		(
			ID            Int          NOT NULL,
			"Value"       SmallInt         NULL,
			"StringValue" VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest2"';
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
		CREATE TABLE "Dest2"
		(
			ID    Int NOT NULL,
			"Int" Int NOT NULL
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

INSERT ALL
WHEN N > 40 THEN
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		ID + 1,
		N
	)
WHEN N < 40 THEN
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		ID + 2,
		N
	)
WHEN 1 = 1 THEN
	INTO "Dest2"
	(
		ID,
		"Int"
	)
	VALUES
	(
		ID + 3,
		ID + 1
	)
SELECT
	s.N,
	s.ID
FROM
	"TestSource" s
		INNER JOIN "TestSource" s2 ON s.ID = s2.ID

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Dest1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Dest2" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Dest1" x
WHERE
	x.ID = 1001

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Dest2" x
WHERE
	x.ID = 1003

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestSource"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

