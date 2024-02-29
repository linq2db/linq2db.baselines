BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UserIssue3128"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "UserIssue3128"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_UserIssue3128" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UserDetailsIssue3128"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "UserDetailsIssue3128"
		(
			"UserId" Int NOT NULL,
			"Age"    Int NOT NULL,

			CONSTRAINT "PK_UserDetailsIssue3128" PRIMARY KEY ("UserId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 10
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18

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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."FirstName",
	"p_1"."PersonID",
	"p_1"."LastName",
	"p_1"."MiddleName",
	"p_1"."Gender"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"UserIssue3128" "t1"
			) as "ex",
			"p"."FirstName",
			"p"."PersonID",
			"p"."LastName",
			"p"."MiddleName",
			"p"."Gender"
		FROM
			"Person" "p"
	) "p_1"
WHERE
	"p_1"."ex" > 0

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

