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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IdContract Integer -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Integer(4) -- Int32
SET     @IdClient = 1
DECLARE @Sum (1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IdContract Integer(4) -- Int32
SET     @IdContract = 2
DECLARE @IdClient Integer -- Int32
SET     @IdClient = NULL
DECLARE @Sum (1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @IdContract Integer -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Integer -- Int32
SET     @IdClient = NULL
DECLARE @Sum (1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @IdContract Integer(4) -- Int32
SET     @IdContract = 2
DECLARE @IdClient Integer(4) -- Int32
SET     @IdClient = 1
DECLARE @Sum (1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Client 1'

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Client 2'

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IdClient Integer(4) -- Int32
SET     @IdClient = 1

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	@Id,
	@IdClient
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IdClient Integer(4) -- Int32
SET     @IdClient = 2

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	@Id,
	@IdClient
)

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
				INNER JOIN "Issue4620Client" "a_Client" ON "b"."IdClient" = "a_Client"."Id"
		WHERE
			"b"."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			"b_1"."Id",
			"a_Client_1"."Name"
		FROM
			"Issue4620Table" "b_1"
				INNER JOIN "Issue4620Contract" "a_Contract" ON "b_1"."IdContract" = "a_Contract"."Id"
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

