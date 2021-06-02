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
	F2
)
VALUES
(8,8,'8'),
(3,3,'3'),
(2,2,'2'),
(6,3,'3'),
(1,3,'3'),
(5,5,'5'),
(7,2,'2'),
(4,4,'4')

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take_1 Integer(4) -- Int32
SET     @take_1 = 3

SELECT
	"t1".F2
FROM
	(
		SELECT
			"_1".F2,
			ROW_NUMBER() OVER (ORDER BY "_1".F1 DESC) as RN
		FROM
			(
				SELECT DISTINCT
					"_".F1,
					"_".F2
				FROM
					"DistinctOrderByTable" "_"
			) "_1"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
END

