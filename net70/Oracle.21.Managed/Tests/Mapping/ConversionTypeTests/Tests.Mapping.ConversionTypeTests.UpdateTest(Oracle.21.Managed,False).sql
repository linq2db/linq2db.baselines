﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "TrimTestTable" (ID, "Data") VALUES (1,'***XXX***')
	INTO "TrimTestTable" (ID, "Data") VALUES (2,'***HHH***')
	INTO "TrimTestTable" (ID, "Data") VALUES (3,'***VVV***')
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int32
SET     @ID = 3

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = :Data
WHERE
	"TrimTestTable".ID = :ID

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = :Data
WHERE
	"TrimTestTable"."Data" = '***XXX***'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***SSS***'
DECLARE @p Varchar2(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = :Data
WHERE
	"TrimTestTable"."Data" = :p

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

