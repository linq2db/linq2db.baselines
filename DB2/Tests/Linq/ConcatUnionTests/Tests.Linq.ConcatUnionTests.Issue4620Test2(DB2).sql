BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4620Table"
		(
			"Id"         Int     NOT NULL,
			"IdContract" Int         NULL,
			"IdClient"   Int         NULL,
			"Sum"        Decimal NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(1,NULL,1,0),
(2,2,NULL,0),
(3,NULL,NULL,0),
(4,2,1,0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Client"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4620Client"
		(
			"Id"   Int           NOT NULL,
			"Name" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(1,'Client 1'),
(2,'Client 2')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Contract"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4620Contract"
		(
			"Id"       Int NOT NULL,
			"IdClient" Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	(
		SELECT
			"b"."Id",
			"a_Client"."Name"
		FROM
			"Issue4620Table" "b"
				INNER JOIN "Issue4620Client" "a_Client" ON "b"."IdClient" = "a_Client"."Id" AND "b"."IdClient" IS NOT NULL
		WHERE
			"b"."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			"b_1"."Id",
			"a_Client_1"."Name"
		FROM
			"Issue4620Table" "b_1"
				INNER JOIN "Issue4620Contract" "a_Contract" ON "b_1"."IdContract" = "a_Contract"."Id" AND "b_1"."IdContract" IS NOT NULL
				INNER JOIN "Issue4620Client" "a_Client_1" ON "a_Contract"."IdClient" = "a_Client_1"."Id"
		WHERE
			"b_1"."IdContract" IS NOT NULL
	) "t1"
ORDER BY
	"t1"."Id",
	"t1"."Name"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Contract"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Client"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Table"';
END

