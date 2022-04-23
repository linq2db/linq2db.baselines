BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"  Int NOT NULL,
			"Int" Int     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL

INSERT INTO "Src"
(
	"Id",
	"Int"
)
VALUES
(
	@Id,
	@Int_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 2

INSERT INTO "Src"
(
	"Id",
	"Int"
)
VALUES
(
	@Id,
	@Int_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END

