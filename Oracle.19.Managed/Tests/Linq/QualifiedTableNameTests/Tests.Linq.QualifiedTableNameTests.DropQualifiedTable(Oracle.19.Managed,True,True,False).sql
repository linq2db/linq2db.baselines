-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.19.Managed Oracle.Managed Oracle12
BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "QualifiedNameTable2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.19.Managed Oracle.Managed Oracle12
CREATE TABLE "QualifiedNameTable2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY (ID)
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DROP TABLE "QualifiedNameTable2"@XE

