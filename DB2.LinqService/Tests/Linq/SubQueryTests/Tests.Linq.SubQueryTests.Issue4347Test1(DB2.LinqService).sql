BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TransactionEntity"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TransactionEntity"
		(
			"Id"      char(16) for bit data NOT NULL,
			"ValidOn" timestamp             NOT NULL,

			CONSTRAINT "PK_TransactionEntity" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "LineEntity"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "LineEntity"
		(
			"Id"            char(16) for bit data NOT NULL,
			"TransactionId" char(16) for bit data NOT NULL,
			"Amount"        Decimal               NOT NULL,
			"Currency"      NVarChar(255)             NULL,

			CONSTRAINT "PK_LineEntity" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Amount",
	"d"."Currency"
FROM
	(
		SELECT DISTINCT
			"x"."Id"
		FROM
			"TransactionEntity" "x"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					(
						SELECT
							"a_Lines"."Currency"
						FROM
							"LineEntity" "a_Lines"
						WHERE
							"x"."Id" = "a_Lines"."TransactionId"
						INTERSECT
						SELECT
							"t1"."item" as "Currency"
						FROM
							(VALUES
								('A'), ('B')
							) "t1"("item")
					) "t2"
			)
	) "m_1"
		INNER JOIN "LineEntity" "d" ON "m_1"."Id" = "d"."TransactionId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "LineEntity"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TransactionEntity"';
END

