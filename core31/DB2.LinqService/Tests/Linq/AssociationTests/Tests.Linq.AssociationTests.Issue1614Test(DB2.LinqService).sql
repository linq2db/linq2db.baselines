﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Lookup"
(
	"Id"   Int           NOT NULL,
	"Type" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."AssociatedObjectId",
	"t1"."AssociationTypeId",
	"c_1"."Id"
FROM
	"Resource" "t1"
		LEFT JOIN "Lookup" "a_AssociationTypeCode" ON "t1"."AssociationTypeId" = "a_AssociationTypeCode"."Id"
		LEFT JOIN "User" "c_1" ON "a_AssociationTypeCode"."Type" = 'us' AND "c_1"."Id" = "t1"."AssociatedObjectId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Lookup"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Resource"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
END

