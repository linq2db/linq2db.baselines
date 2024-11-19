BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4715Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4715Table"
		(
			"Id"    Int NOT NULL,
			"Prop1" Int NOT NULL,
			"Prop2" Int NOT NULL,
			"Prop3" Int NOT NULL,
			"Prop4" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @ImplicitPropertyRW Int32
SET     @ImplicitPropertyRW = 2
DECLARE @ImplicitPropertyRO Int32
SET     @ImplicitPropertyRO = 11
DECLARE @Tests_Linq_InterfaceTests_IExp Int32
SET     @Tests_Linq_InterfaceTests_IExp = 3
DECLARE @Tests_Linq_InterfaceTests_IEx Int32
SET     @Tests_Linq_InterfaceTests_IEx = 22

INSERT INTO "Issue4715Table"
(
	"Id",
	"Prop1",
	"Prop2",
	"Prop3",
	"Prop4"
)
VALUES
(
	:Id,
	:ImplicitPropertyRW,
	:ImplicitPropertyRO,
	:Tests_Linq_InterfaceTests_IExp,
	:Tests_Linq_InterfaceTests_IEx
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Prop1" as "ImplicitPropertyRW",
	t1."Prop3" as "TestsLinqInterfaceTestsIExplicitInterfaceTestsLinqInterfaceTestsIssue4715TableExplicitPropertyRW"
FROM
	"Issue4715Table" t1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4715Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

