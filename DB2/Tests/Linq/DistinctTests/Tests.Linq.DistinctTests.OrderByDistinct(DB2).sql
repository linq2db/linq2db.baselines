BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "DistinctOrderByTable"
		(
			"Id" Int           NOT NULL,
			F1   Int           NOT NULL,
			F2   NVarChar(255)     NULL,
			F3   Int           NOT NULL,

			CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(8,8,'8',5),
(3,3,'3',3),
(2,2,'2',1),
(6,3,'3',4),
(1,3,'3',7),
(5,5,'5',2),
(7,2,'2',8),
(4,4,'4',6)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t2".F2
FROM
	(
		SELECT DISTINCT
			"t1".F1,
			"t1".F2
		FROM
			"DistinctOrderByTable" "t1"
	) "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
END

