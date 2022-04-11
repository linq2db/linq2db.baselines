BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Dest1"
(
	ID            Int          NOT NULL,
	"Value"       SmallInt         NULL,
	"StringValue" VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Dest2"
(
	ID    Int NOT NULL,
	"Int" Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

