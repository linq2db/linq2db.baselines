-- Oracle.11.Managed Oracle11
BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "QualifiedNameTable2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.11.Managed Oracle11
CREATE TABLE "QualifiedNameTable2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY (ID)
)

-- Oracle.11.Managed Oracle11
BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "QualifiedNameTable2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

