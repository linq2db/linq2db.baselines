BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4715Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
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
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @ImplicitPropertyRW Integer(4) -- Int32
SET     @ImplicitPropertyRW = 2
DECLARE @ImplicitPropertyRO Integer(4) -- Int32
SET     @ImplicitPropertyRO = 11
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterfaceTests Integer(4) -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterfaceTests = 3
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterfaceTest Integer(4) -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterfaceTest = 22

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
	@Id,
	@ImplicitPropertyRW,
	@ImplicitPropertyRO,
	@Tests_Linq_InterfaceTests_IExplicitInterfaceTests,
	@Tests_Linq_InterfaceTests_IExplicitInterfaceTest
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Prop1",
	"t1"."Prop3"
FROM
	"Issue4715Table" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4715Table"';
END

