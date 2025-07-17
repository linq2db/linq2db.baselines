BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ImplicitPropertyRW Int -- Int32
SET     @ImplicitPropertyRW = 2
DECLARE @ImplicitPropertyRO Int -- Int32
SET     @ImplicitPropertyRO = 11
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRW Int -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRW = 3
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRO Int -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRO = 22

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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Prop1",
	"t1"."Prop3"
FROM
	"Issue4715Table" "t1"
LIMIT 2

