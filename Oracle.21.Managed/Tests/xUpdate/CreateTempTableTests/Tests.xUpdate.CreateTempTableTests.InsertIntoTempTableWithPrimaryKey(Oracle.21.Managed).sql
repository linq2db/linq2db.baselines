-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "TableWithPrimaryKey2"
		(
			"Key" Int NOT NULL,

			CONSTRAINT "PK_TableWithPrimaryKey2" PRIMARY KEY ("Key")
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "TableWithPrimaryKey2" ("Key") VALUES (1)
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TableWithPrimaryKey2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

