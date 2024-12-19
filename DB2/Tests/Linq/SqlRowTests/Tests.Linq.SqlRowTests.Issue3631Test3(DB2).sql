BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3631Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3631Table"
		(
			"Country" NVarChar(2) NOT NULL,
			"State"   NVarChar(2) NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
('US','AL'),
('US','AZ'),
('US','CA'),
('US','FL'),
('US','IN'),
('US','OH'),
('US','NY'),
('CA','AB'),
('CA','ON')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	("x"."Country", "x"."State") IN (
		SELECT
			"t1"."Item1",
			"t1"."Item2"
		FROM
			(VALUES
				('US','CA'), ('US','NY')
			) "t1"("Item1", "Item2")
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3631Table"';
END

