-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @Data VarChar(9) -- String
SET     @Data = '***HHH***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

