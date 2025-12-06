-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1002
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1003
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	(
		SELECT
			"c_1"."ParentID"
		FROM
			"Parent" "c_1"
		WHERE
			"c_1"."ParentID" > 1000
		FETCH NEXT 2 ROWS ONLY
	) "p"
WHERE
	"p"."ParentID" IN (
		SELECT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"c_2"."ParentID"
				FROM
					"Parent" "c_2"
				WHERE
					"c_2"."ParentID" > 1000
				FETCH NEXT 2 ROWS ONLY
			) "t1"
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" > 1000

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" > 1000

