﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "UserIssue3128"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_UserIssue3128" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "UserDetailsIssue3128"
(
	"UserId" Int NOT NULL,
	"Age"    Int NOT NULL,

	CONSTRAINT "PK_UserDetailsIssue3128" PRIMARY KEY ("UserId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

SELECT
	"Id"
FROM
	NEW TABLE
	(
		INSERT INTO "UserIssue3128"
		(
			"Id"
		)
		VALUES
		(
			@Id
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 10
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18

SELECT
	"UserId"
FROM
	NEW TABLE
	(
		INSERT INTO "UserDetailsIssue3128"
		(
			"UserId",
			"Age"
		)
		VALUES
		(
			@UserId,
			@Age
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"a_Details"."UserId",
	"a_Details"."Age"
FROM
	"UserIssue3128" "t1"
		LEFT JOIN "UserDetailsIssue3128" "a_Details" ON "t1"."Id" = "a_Details"."UserId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UserDetailsIssue3128"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UserIssue3128"';
END

