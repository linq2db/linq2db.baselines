﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Data"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Data"
		(
			"Id" Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SubData1"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "SubData1"
		(
			"Id" Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "SubData1"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

INSERT INTO "SubData1"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SubData2"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "SubData2"
		(
			"Id"     Int           NOT NULL,
			"Reason" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Reason VarChar(5) -- String
SET     @Reason = 'прст1'

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Reason AS NVarChar(5))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Reason VarChar(5) -- String
SET     @Reason = 'прст2'

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Reason AS NVarChar(5))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"a_SubData"."Id",
	(
		SELECT
			"a_SubDatas"."Reason"
		FROM
			"SubData2" "a_SubDatas"
		WHERE
			"a_SubData"."Id" IS NOT NULL AND "a_SubData"."Id" = "a_SubDatas"."Id"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Data" "i"
		LEFT JOIN "SubData1" "a_SubData" ON "i"."Id" = "a_SubData"."Id"
ORDER BY
	"i"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SubData2"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SubData1"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Data"';
END

