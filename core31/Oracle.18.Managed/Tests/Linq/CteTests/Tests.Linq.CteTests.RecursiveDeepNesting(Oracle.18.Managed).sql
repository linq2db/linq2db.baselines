BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE TABLE "HierarchyTree"
(
	"Id"       Int NOT NULL,
	"ParentId" Int     NULL
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyTree"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

