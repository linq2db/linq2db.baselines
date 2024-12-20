BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4715Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Prop1",
	t1."Prop3"
FROM
	"Issue4715Table" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4715Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

