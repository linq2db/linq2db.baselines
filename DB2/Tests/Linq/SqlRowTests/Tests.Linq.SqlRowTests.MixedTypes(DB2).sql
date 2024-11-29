BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Mixed"
		(
			"Int"    Int           NOT NULL,
			"Str"    NVarChar(255)     NULL,
			"Date"   timestamp     NOT NULL,
			"Double" Float         NOT NULL,
			"Bool"   smallint      NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(1,'One','2001-01-01-00.00.00.000000',1,1),
(2,'Two','2002-02-02-00.00.00.000000',2,0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Mixed" "t"
WHERE
	"t"."Int" > 0 AND ("t"."Str", "t"."Double", "t"."Bool") = ('One', 1, 1) AND
	EXISTS(
		SELECT
			1
		FROM
			"Mixed" "u"
		WHERE
			(2, "u"."Date") > ("u"."Int", "t"."Date")
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
END

