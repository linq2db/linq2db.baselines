BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		DECLARE GLOBAL TEMPORARY TABLE SESSION."temp_table1"
		(
			ID      Int NOT NULL,
			"Value" Int NOT NULL
		)
		ON COMMIT PRESERVE ROWS
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO SESSION."temp_table1"
(
	ID,
	"Value"
)
VALUES
(1,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		DECLARE GLOBAL TEMPORARY TABLE SESSION."temp_table2"
		(
			ID      Int NOT NULL,
			"Value" Int NOT NULL
		)
		ON COMMIT PRESERVE ROWS
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO SESSION."temp_table2"
(
	ID,
	"Value"
)
SELECT
	"t1".ID,
	"t1"."Value"
FROM
	SESSION."temp_table1" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	SESSION."temp_table1" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	SESSION."temp_table2" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO SESSION."temp_table1"
(
	ID,
	"Value"
)
VALUES
(2,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Value Integer(4) -- Int32
SET     @Value = 3

INSERT INTO SESSION."temp_table1"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
INSERT BULK SESSION."temp_table1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

TRUNCATE TABLE SESSION."temp_table1" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

TRUNCATE TABLE SESSION."temp_table2" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE SESSION."temp_table2"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE SESSION."temp_table1"';
END

