BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
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
		CREATE TABLE "TrimTestTable"
		(
			ID     Int         NOT NULL,
			"Data" VarChar(50)     NULL,

			CONSTRAINT "PK_TrimTestTable" PRIMARY KEY (ID)
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

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	1,
	'***XXX***'
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	2,
	'***HHH***'
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"TrimTestTable" t1
SET
	"Data" = '***III***'
WHERE
	t1.ID = 3

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"TrimTestTable" t
SET
	"Data" = '***OOO***'
WHERE
	t."Data" = '***XXX***'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"TrimTestTable" t
SET
	"Data" = '***SSS***'
WHERE
	t."Data" = '***HHH***'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

