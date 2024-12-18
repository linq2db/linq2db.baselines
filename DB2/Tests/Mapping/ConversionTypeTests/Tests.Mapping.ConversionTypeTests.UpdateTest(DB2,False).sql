BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TrimTestTable"
		(
			ID     Int          NOT NULL,
			"Data" NVarChar(50)     NULL,

			CONSTRAINT "PK_TrimTestTable" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(1,'***XXX***'),
(2,'***HHH***'),
(3,'***VVV***')

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = @Data
WHERE
	"t1".ID = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = @Data
WHERE
	"t"."Data" = '***XXX***' AND "t"."Data" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = @Data
WHERE
	"t"."Data" = @p AND "t"."Data" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
END

