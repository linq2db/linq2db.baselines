-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Prop1" as "ImplicitPropertyRW",
	t1."Prop3" as "TestsLinqInterfaceTestsIExplicitInterfaceTestsLinqInterfaceTestsIssue4715TableExplicitPropertyRW"
FROM
	"Issue4715Table" t1
FETCH NEXT 2 ROWS ONLY

