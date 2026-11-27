-- Oracle.23.Managed Oracle.Managed Oracle12
BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "QualifiedNameTable2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
CREATE TABLE "QualifiedNameTable2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY (ID)
)

-- Oracle.23.Managed Oracle.Managed Oracle12
BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "QualifiedNameTable2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

