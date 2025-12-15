-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.11.Managed Oracle11

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY (ID)
)

-- Oracle.11.Managed Oracle11

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	"DropTableTest" t1

-- Oracle.11.Managed Oracle11

DROP TABLE "DropTableTest"

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	"DropTableTest" t1

