-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	'value'
)

-- Oracle.23.Managed Oracle.Managed Oracle12
BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TempTable"
		(
			"Id"      Int          NOT NULL,
			"Renamed" VarChar(255)     NULL,

			CONSTRAINT "PK_TempTable" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	"TestTempTable" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'value 2'
)

-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
VALUES
(
	2,
	'renamed 2'
)

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value"
FROM
	"TestTempTable" t1
ORDER BY
	t1."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Renamed"
FROM
	"TempTable" t1
ORDER BY
	t1."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

