BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleData"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "SampleData"
		(
			"Id"     Int NOT NULL,
			"Value1" Int NOT NULL,
			"Value2" Int NOT NULL,
			"Value3" Int NOT NULL,

			CONSTRAINT "PK_SampleData" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(1,10,100,1000),
(2,20,200,2000),
(3,30,300,3000),
(4,40,400,4000),
(5,50,500,5000),
(6,60,600,6000),
(7,70,700,7000),
(8,80,800,8000),
(9,90,900,9000),
(10,100,1000,10000)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value3"
FROM
	(
		SELECT
			"t"."Id",
			"t"."Value1",
			"t"."Value2",
			"t"."Value3"
		FROM
			"SampleData" "t"
		WHERE
			Mod("t"."Id", 2) = 0
		UNION ALL
		SELECT
			"t_1"."Id",
			"t_1"."Value1",
			"t_1"."Value2",
			"t_1"."Value3"
		FROM
			"SampleData" "t_1"
		WHERE
			Mod("t_1"."Id", 2) = 0
	) "t1"
WHERE
	 NOT EXISTS (
		SELECT
			*
		FROM
			"SampleData" "t_2"
		WHERE
			Mod("t_2"."Id", 4) = 0 AND
			"t1"."Id" = "t_2"."Id" AND
			"t1"."Value1" = "t_2"."Value1" AND
			"t1"."Value2" = "t_2"."Value2" AND
			"t1"."Value3" = "t_2"."Value3"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleData"';
END

