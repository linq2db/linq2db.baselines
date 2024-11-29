BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_BaseThing"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4364_BaseThing"
		(
			"Id"                Int NOT NULL,
			"Type"              Int NOT NULL,
			"BaseField"         Int NOT NULL,
			"ConcreteField"     Int     NULL,
			"IntermediateField" Int     NULL,

			CONSTRAINT "PK_Issue4364_BaseThing" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4364_BaseThing"
(
	"Id",
	"Type",
	"BaseField",
	"ConcreteField",
	"IntermediateField"
)
VALUES
(1,1,2,0,0),
(2,2,3,4,0),
(3,101,4,0,6),
(4,102,5,0,0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Person"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4364_Person"
		(
			"Id"       Int           NOT NULL,
			"FullName" NVarChar(255) NOT NULL,

			CONSTRAINT "PK_Issue4364_Person" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
VALUES
(1,'Person 1'),
(2,'Person 2'),
(3,'Person 3'),
(4,'Person 4'),
(5,'Person 5')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Interaction"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4364_Interaction"
		(
			"Id"       Int NOT NULL,
			"PersonId" Int NOT NULL,
			"ThingId"  Int NOT NULL,

			CONSTRAINT "PK_Issue4364_Interaction" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4364_Interaction"
(
	"Id",
	"PersonId",
	"ThingId"
)
VALUES
(1,2,3),
(2,3,4),
(3,4,1),
(4,1,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"b"."Type",
	"p"."FullName"
FROM
	"Issue4364_BaseThing" "b"
		INNER JOIN "Issue4364_Interaction" "i" ON "b"."Id" = "i"."ThingId"
		INNER JOIN "Issue4364_Person" "p" ON "i"."PersonId" = "p"."Id"
WHERE
	"b"."Type" IN (102, 101)
ORDER BY
	"b"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Interaction"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Person"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_BaseThing"';
END

