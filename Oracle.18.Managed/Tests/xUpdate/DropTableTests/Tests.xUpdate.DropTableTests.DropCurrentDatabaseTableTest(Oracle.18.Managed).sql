﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"DropTableTest" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DROP TABLE "DropTableTest"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"DropTableTest" t1

