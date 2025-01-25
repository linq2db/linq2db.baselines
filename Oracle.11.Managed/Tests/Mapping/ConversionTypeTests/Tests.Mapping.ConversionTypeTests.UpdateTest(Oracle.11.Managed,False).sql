BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
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
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "TrimTestTable" (ID, "Data") VALUES (1,'***XXX***')
	INTO "TrimTestTable" (ID, "Data") VALUES (2,'***HHH***')
	INTO "TrimTestTable" (ID, "Data") VALUES (3,'***VVV***')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" t1
SET
	"Data" = :Data
WHERE
	t1.ID = :ID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" t
SET
	"Data" = :Data
WHERE
	t."Data" = '***XXX***'

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***SSS***'
DECLARE @p Varchar2(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" t
SET
	"Data" = :Data
WHERE
	t."Data" = :p

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

