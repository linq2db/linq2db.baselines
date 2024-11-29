BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InheritanceFilter"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InheritanceFilter"
		(
			"Id"                Int NOT NULL,
			"Code"              Int NOT NULL,
			"Child1Field"       Int     NULL,
			"Child2Field"       Int     NULL,
			"Grandchild11Field" Int     NULL,
			"Grandchild12Field" Int     NULL,
			"Grandchild21Field" Int     NULL,
			"Grandchild22Field" Int     NULL,

			CONSTRAINT "PK_InheritanceFilter" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
INSERT BULK "InheritanceFilter"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Child1Field",
	"t1"."Child2Field",
	"t1"."Grandchild11Field",
	"t1"."Grandchild12Field",
	"t1"."Grandchild21Field",
	"t1"."Grandchild22Field"
FROM
	"InheritanceFilter" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InheritanceFilter"';
END

